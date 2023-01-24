import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'family_event.dart';
part 'family_state.dart';

part 'family_bloc.freezed.dart';
part 'family_bloc.g.dart';

class FamilyBloc extends HydratedBloc<FamilyEvent, FamilyState> {
  FamilyBloc({
    required String bearerToken,
    required String userId,
    required PersonalDataRepository repository,
  })  : _bearerToken = bearerToken,
        _userId = userId,
        _repository = repository,
        super(const FamilyState()) {
    on<FetchFamilyList>(_onFetchFamilyList);
  }

  final String _bearerToken;
  final String _userId;
  final PersonalDataRepository _repository;

  FutureOr<void> _onFetchFamilyList(
      FetchFamilyList event, Emitter<FamilyState> emit) async {
    try {
      final familyList = await _repository.familyList(
        bearerToken: _bearerToken,
        userId: _userId,
      );
      emit(FamilyState.data(familyList));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);

      emit(FamilyState.error(e.toString()));
    }
  }

  @override
  FamilyState? fromJson(Map<String, dynamic> json) {
    try {
      return FamilyState.fromJson(json);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(FamilyState state) {
    if (state.error != null) return null;
    return state.toJson();
  }
}
