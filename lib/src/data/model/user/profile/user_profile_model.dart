import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

part 'user_profile_model.freezed.dart';
part 'user_profile_model.g.dart';

@freezed
class UserProfileResponse extends ApiResponse<UserModel>
    with _$UserProfileResponse {
  const UserProfileResponse._();

  const factory UserProfileResponse({
    @Default(true) bool success,
    String? message,
    UserModel? data,
  }) = _UserProfileResponse;

  factory UserProfileResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseFromJson(json);
}
