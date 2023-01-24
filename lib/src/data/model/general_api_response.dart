import 'package:pasien/src/domain/domain.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'general_api_response.freezed.dart';
part 'general_api_response.g.dart';

@freezed
class GeneralApiResponse extends ApiResponse<Object> with _$GeneralApiResponse {
  const factory GeneralApiResponse({
    required bool success,
    String? message,
    Object? data,
  }) = _GeneralApiResponse;

  factory GeneralApiResponse.fromJson(Map<String, dynamic> json) =>
      _$GeneralApiResponseFromJson(json);
}

@freezed
class NumberApiResponse extends ApiResponse<num> with _$NumberApiResponse {
  const factory NumberApiResponse({
    required bool success,
    String? message,
    num? data,
  }) = _NumberApiResponse;

  factory NumberApiResponse.fromJson(Map<String, dynamic> json) =>
      _$NumberApiResponseFromJson(json);
}
