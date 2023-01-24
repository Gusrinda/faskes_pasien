part of 'forgot_password_bloc.dart';

abstract class ForgotPasswordEvent extends Equatable {
  const ForgotPasswordEvent();
}

class ResetError extends ForgotPasswordEvent {
  const ResetError();
  @override
  List<Object?> get props => [];
}

class RequestResetPassword extends ForgotPasswordEvent {
  const RequestResetPassword();
  @override
  List<Object?> get props => [];
}

class RequestChangePassword extends ForgotPasswordEvent {
  const RequestChangePassword();
  @override
  List<Object?> get props => [];
}

class OnPasswordChanged extends ForgotPasswordEvent {
  const OnPasswordChanged(this.password);
  final String password;
  @override
  List<Object?> get props => [password];
}

class OnPasswordConfirmationChanged extends ForgotPasswordEvent {
  const OnPasswordConfirmationChanged(this.password);
  final String password;
  @override
  List<Object?> get props => [password];
}

class TogglePasswordObscured extends ForgotPasswordEvent {
  const TogglePasswordObscured(this.obscure);
  final bool obscure;
  @override
  List<Object?> get props => [obscure];
}

class TogglePasswordConfirmationObscured extends ForgotPasswordEvent {
  const TogglePasswordConfirmationObscured(this.obscure);
  final bool obscure;
  @override
  List<Object?> get props => [obscure];
}

class OnOTPChanged extends ForgotPasswordEvent {
  const OnOTPChanged(this.otp);
  final String otp;
  @override
  List<Object?> get props => [otp];
}
