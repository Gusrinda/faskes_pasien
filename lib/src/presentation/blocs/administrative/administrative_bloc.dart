import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'administrative_event.dart';
part 'administrative_state.dart';
part 'administrative_bloc.freezed.dart';
part 'administrative_bloc.g.dart';

class AdministrativeBloc
    extends HydratedBloc<AdministrativeEvent, AdministrativeState> {
  AdministrativeBloc({
    required String bearerToken,
    required AdministrativeRepository repository,
  })  : _bearerToken = bearerToken,
        _repository = repository,
        super(const AdministrativeState()) {
    on<FetchProvince>(_onFetchProvince);
    on<FetchCity>(_onFetchCity);
    on<FetchDistrict>(_onFetchDistrict);
    on<FetchVillage>(_onFetchVillage);
  }

  final String _bearerToken;
  final AdministrativeRepository _repository;

  FutureOr<void> _onFetchProvince(
      FetchProvince event, Emitter<AdministrativeState> emit) async {
    try {
      final provinceList = await _repository.getProvince(_bearerToken);
      emit(state.copyWith(provinceList: provinceList));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  FutureOr<void> _onFetchCity(
      FetchCity event, Emitter<AdministrativeState> emit) async {
    try {
      final cityList = await _repository.getCity(
        _bearerToken,
        provinceCode: event.provinceCode,
      );
      final mapCityList = Map<String, List<CityModel>>.from(state.mapCityList);
      mapCityList[event.provinceCode] = cityList;
      emit(state.copyWith(mapCityList: mapCityList));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  FutureOr<void> _onFetchDistrict(
      FetchDistrict event, Emitter<AdministrativeState> emit) async {
    try {
      final districtList = await _repository.getDistrict(
        _bearerToken,
        cityCode: event.cityCode,
      );
      final mapDistrictList =
          Map<String, List<DistrictModel>>.from(state.mapDistrictList);
      mapDistrictList[event.cityCode] = districtList;
      emit(state.copyWith(mapDistrictList: mapDistrictList));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  FutureOr<void> _onFetchVillage(
      FetchVillage event, Emitter<AdministrativeState> emit) async {
    try {
      final villageList = await _repository.getVillage(
        _bearerToken,
        districtCode: event.districtCode,
      );
      final mapVillageList =
          Map<String, List<VillageModel>>.from(state.mapVillageList);
      mapVillageList[event.districtCode] = villageList;
      emit(state.copyWith(mapVillageList: mapVillageList));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  @override
  AdministrativeState? fromJson(Map<String, dynamic> json) {
    try {
      return AdministrativeState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(AdministrativeState state) {
    return state.toJson();
  }
}
