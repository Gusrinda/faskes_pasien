import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/domain/domain.dart';

part 'login_user_model.freezed.dart';
part 'login_user_model.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  const factory LoginRequest({
    required String identity,
    required String password,
  }) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}

@freezed
class LoginUserResponse extends ApiResponse<LoginUserModel>
    with _$LoginUserResponse {
  const factory LoginUserResponse({
    @Default(false) bool success,
    String? message,
    LoginUserModel? data,
  }) = _LoginUserResponse;

  factory LoginUserResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginUserResponseFromJson(json);
}

@freezed
class LoginUserModel extends LoginUser with _$LoginUserModel {
  const factory LoginUserModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'nik') required String nik,
    @JsonKey(name: 'token') required String token,
    @JsonKey(name: 'token_type') required String tokenType,
  }) = _LoginUserModel;

  factory LoginUserModel.fromJson(Map<String, dynamic> json) =>
      _$LoginUserModelFromJson(json);
}

extension LoginUserModelToken on LoginUserModel {
  String get bearerToken {
    return '$tokenType $token';
  }
}