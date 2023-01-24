import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'insurance_event.dart';
part 'insurance_state.dart';
part 'insurance_bloc.freezed.dart';
part 'insurance_bloc.g.dart';

class InsuranceBloc extends HydratedBloc<InsuranceEvent, InsuranceState> {
  InsuranceBloc({
    required String bearerToken,
    required String userId,
    required PersonalDataRepository repository,
  })  : _bearerToken = bearerToken,
        _userId = userId,
        _repository = repository,
        super(const InsuranceState()) {
    on<FetchInsuranceList>(_onFetchInsuranceList);
  }

  final String _bearerToken;
  final String _userId;
  final PersonalDataRepository _repository;

  FutureOr<void> _onFetchInsuranceList(
      FetchInsuranceList event, Emitter<InsuranceState> emit) async {
    try {
      final insuranceList = await _repository.insuranceList(
        bearerToken: _bearerToken,
        userId: _userId,
      );
      emit(InsuranceState.data(insuranceList));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);

      emit(InsuranceState.error(e.toString()));
    }
  }

  @override
  InsuranceState? fromJson(Map<String, dynamic> json) {
    try {
      return InsuranceState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(InsuranceState state) {
    if (state.error != null) return null;
    return state.toJson();
  }
}
