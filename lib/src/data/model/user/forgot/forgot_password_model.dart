import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_model.freezed.dart';
part 'forgot_password_model.g.dart';

@freezed
class ForgotPasswordRequest with _$ForgotPasswordRequest {
  const factory ForgotPasswordRequest({
    required String identity,
  }) = _ForgotPasswordRequest;

  factory ForgotPasswordRequest.fromJson(Map<String, dynamic> json) =>
      _$ForgotPasswordRequestFromJson(json);
}

@freezed
class ForgotPasswordVerificationRequest
    with _$ForgotPasswordVerificationRequest {
  const factory ForgotPasswordVerificationRequest({
    required String identity,
    required String password,
    @JsonKey(name: 'c_password') required String confirmPassword,
  }) = _ForgotPasswordVerificationRequest;

  factory ForgotPasswordVerificationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$ForgotPasswordVerificationRequestFromJson(json);
}
