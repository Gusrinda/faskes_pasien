import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';
part 'authentication_bloc.g.dart';

class AuthenticationBloc
    extends HydratedBloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc({
    required this.userRepository,
  }) : super(const AuthenticationState()) {
    on<AuthenticationStatusChanged>(_onAuthenticationStatusChanged);
    on<AuthenticationLogoutRequested>(_onAuthenticationLogoutRequested);
    on<FetchProfile>(_onFetchProfile);
  }

  final UserRepository userRepository;

  FutureOr<void> _onAuthenticationStatusChanged(
      AuthenticationStatusChanged event,
      Emitter<AuthenticationState> emit) async {
    switch (event.status) {
      case AuthenticationStatus.unauthenticated:
        return emit(AuthenticationState.unauthenticated());
      case AuthenticationStatus.authenticated:
        final loginUser = event.loginUser;
        if (loginUser != null) {
          return emit(AuthenticationState.authenticated(loginUser));
        }
        return emit(AuthenticationState.unauthenticated());
      case AuthenticationStatus.me:
        final userModel = await _tryGetUser();
        if (userModel == null) {
          return emit(AuthenticationState.unauthenticated());
        }
        emit(state.copyWith(userModel: userModel, userId: userModel.id));
        break;
      default:
        return emit(const AuthenticationState());
    }
  }

  FutureOr<void> _onAuthenticationLogoutRequested(
      AuthenticationLogoutRequested event, Emitter<AuthenticationState> emit) {
    emit(AuthenticationState.unauthenticated());
  }

  FutureOr<void> _onFetchProfile(
      FetchProfile event, Emitter<AuthenticationState> emit) async {
    final loginUser = state.loginUser!;
    final userModel = state.userModel!;
    try {
      final token = '${loginUser.tokenType} ${loginUser.token}';
      final updatedUserModel = await userRepository.me(
        token,
        userId: userModel.userId,
      );
      emit(state.copyWith(
        userModel: updatedUserModel.copyWith(userId: userModel.userId),
      ));
    } catch (e, s) {
      debugPrint(e.toString());
      debugPrintStack(stackTrace: s);
    }
  }

  Future<UserModel?> _tryGetUser() async {
    LoginUserModel? loginUser = state.loginUser;
    UserModel? userModel;
    if (loginUser != null) {
      try {
        final token = '${loginUser.tokenType} ${loginUser.token}';
        userModel = await userRepository.me(token);
      } catch (_) {}
    } else {
      // delayed return the data for showing splash screen
      await Future.delayed(const Duration(milliseconds: 750));
    }
    return userModel;
  }

  @override
  AuthenticationState? fromJson(Map<String, dynamic> json) {
    AuthenticationState? state;
    try {
      state = AuthenticationState.fromJson(json);
    } catch (_) {}
    return state;
  }

  @override
  Map<String, dynamic>? toJson(AuthenticationState state) {
    return state.toJson();
  }
}
