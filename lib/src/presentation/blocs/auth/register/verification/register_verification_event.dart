part of 'register_verification_bloc.dart';

abstract class RegisterVerificationEvent extends Equatable {
  const RegisterVerificationEvent();
}

class InputOTP extends RegisterVerificationEvent {
  const InputOTP(this.otp);
  final String otp;
  @override
  List<Object?> get props => [otp];
}

class ResetToastData extends RegisterVerificationEvent {
  const ResetToastData();
  @override
  List<Object?> get props => [];
}

class SubmitVerification extends RegisterVerificationEvent {
  const SubmitVerification();
  @override
  List<Object?> get props => [];
}
