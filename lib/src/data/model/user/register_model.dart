import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/domain/domain.dart';

part 'register_model.freezed.dart';
part 'register_model.g.dart';

@freezed
class RegisterUserResponse extends ApiResponse<RegisterUserModel>
    with _$RegisterUserResponse {
  const factory RegisterUserResponse({
    @Default(false) bool success,
    String? message,
    RegisterUserModel? data,
    dynamic errors,
  }) = _RegisterUserResponse;

  factory RegisterUserResponse.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserResponseFromJson(json);
}

@freezed
class RegisterUserModel extends RegisteredUser with _$RegisterUserModel {
  const factory RegisterUserModel({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'nik') required String nik,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone') String? phone,
    @JsonKey(name: 'username') required String username,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _RegisterUserModel;

  factory RegisterUserModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterUserModelFromJson(json);
}

@freezed
class RegisterRequest with _$RegisterRequest {
  const factory RegisterRequest({
    @JsonKey(name: 'name') required String name,
    @JsonKey(name: 'nik') required String nik,
    @JsonKey(name: 'email') required String email,
    @JsonKey(name: 'phone') required String phone,
    @Default('pasien') @JsonKey(name: 'role') String role,
    @JsonKey(name: 'password') required String password,
    @JsonKey(name: 'c_password') required String confirmPassword,
  }) = _RegisterRequest;

  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestFromJson(json);
}
