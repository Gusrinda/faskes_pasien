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
      final loginUser = await userRepository.login(
        identity: identity,
        password: password,
      );
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
