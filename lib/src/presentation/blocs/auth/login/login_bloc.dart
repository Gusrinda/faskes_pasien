import 'dart:async';

import 'package:pasien/src/core/model/form_text_input.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({
    required this.userRepository,
  }) : super(LoginState(
          fieldUsername: FormTextInput.pure(),
          fieldPassword: FormTextInput.pure(),
        )) {
    on<OnUsernameChanged>(_onOnEmailChanged);
    on<OnPasswordChanged>(_onOnPasswordChanged);
    on<TogglePasswordObscured>(_onTogglePasswordObscured);
    on<SubmitLogin>(_onSubmitLogin);
  }

  final UserRepository userRepository;

  FutureOr<void> _onOnEmailChanged(
      OnUsernameChanged event, Emitter<LoginState> emit) async {
    final fieldUsername = state.fieldUsername.toDirty(value: event.username);
    emit(state.copyWith(
      status: Formz.validate([fieldUsername, state.fieldPassword]),
      fieldUsername: fieldUsername,
    ));
  }

  FutureOr<void> _onOnPasswordChanged(
      OnPasswordChanged event, Emitter<LoginState> emit) async {
    final fieldPassword = state.fieldPassword.toDirty(value: event.password);
    emit(state.copyWith(
      status: Formz.validate([state.fieldUsername, fieldPassword]),
      fieldPassword: fieldPassword,
    ));
  }

  FutureOr<void> _onTogglePasswordObscured(
      TogglePasswordObscured event, Emitter<LoginState> emit) {
    emit(state.copyWith(obscurePassword: event.obscure));
  }

  FutureOr<void> _onSubmitLogin(
      SubmitLogin event, Emitter<LoginState> emit) async {
    final fieldUsername = state.fieldUsername.pure
        ? state.fieldUsername.toDirty(fromTextController: true)
        : state.fieldUsername;
    final fieldPassword = state.fieldPassword.pure
        ? state.fieldPassword.toDirty(fromTextController: true)
        : state.fieldPassword;
    final status = Formz.validate([fieldUsername, fieldPassword]);
    if (!status.isValid) {
      emit(state.copyWith(
        status: status,
        fieldUsername: fieldUsername,
        fieldPassword: fieldPassword,
      ));
      return;
    }

    emit(state.copyWith(error: null, status: FormzStatus.submissionInProgress));
    try {
      final identity = state.fieldUsername.value;
      final password = state.fieldPassword.value;

      final loginUser = LoginUserModel(
          name: "Alann",
          username: "kangmas.alann@gmail.com",
          email: "kangmas.alann@gmail.com",
          nik: "1234567890123456",
          token:
              "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiZTY3ZjlkNWFmMmEzNjQ4ZTlmNTdlZDhlMjFjNmY3NTNiODlhNmJjMGJkZTNkMDczNjJmMTlmYmI5Mjk3MzU4NTNiMjY1Y2U1M2NjMGU5YWUiLCJpYXQiOjE2Njk3NzUwNTYuODQzMzIzLCJuYmYiOjE2Njk3NzUwNTYuODQzMzI3LCJleHAiOjE2ODU0MTM0NTYuODI5MzcyLCJzdWIiOiIzIiwic2NvcGVzIjpbXX0.2lSTRoL28Y7BcCIe7pkJ3Fqt3Fa3KpCwpthsEv7djCVfKOZvgTCuZlLkiAl6hkhKa1JFugq-6TY5-cWb0yL7gidVoVYVX88F2LH-fxi6fPhVZ8jDyw-z-W4jLtWzODPh9YuZEIMvtoLd6yDimhKTxp-Sz_QsNbYQYl5xebcQ7xfQvpEUpPtnFCFr56nnfuE8J3jccIxcg2Szj0IYN6wC01e6tOihVfMgyjLYQhxofLWc0fKQyywE_yFypEpkGFWgtaiFlt1NRi4cXInvrEfJN2nrlbOxphycMJmcWCsVOqgkeAl1Zh1EjUK_rKDIK1k-JR4sC4aIibun3f3iv6YU_lWVG-rbH4bD7akeMefmwj8StJrtssVNrCCyHDsuQttpwHOcmYX8l-2FLZOVJ6OK0ANXpIkkSI6NT3TP9i9bVEWE1yV97xD9SV1UbHpkW5XG7dvO6LPwwjNgHM0NbeIzNcV48uqecKrpi5IRhX9GyAeYY2KI8_aIBqyfLM_3lCB48I0Z066MGx74iwJRH1dJuCk4KSyHHGZFZsN65WKJl0dy9eySyErXkUctNvLqThefHWGDLxPrCbaY7UPx0A7sY_ApUaliGP3M4sM_c9AugFcPQP8XZ4DzjJhSuQqeg6cJ0uSzhaLmcBfJSda3wMLvxoE535YsEUGCFnAeN6kA06E",
          tokenType: "Bearer");

      // final loginUser = await userRepository.login(
      //   identity: identity,
      //   password: password,
      // );
      emit(state.copyWith(
        loginUser: loginUser,
        status: FormzStatus.submissionSuccess,
      ));
    } on ApiException catch (e) {
      emit(state.copyWith(
        error: e.message,
        status: FormzStatus.submissionFailure,
      ));
    }
  }
}
