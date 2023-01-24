import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pasien/src/data/data.dart';
import 'package:retrofit/retrofit.dart' hide Headers;

part 'api_service.g.dart';
part 'api_service.profile.dart';

@RestApi(baseUrl: 'https://backend.qqltech.com:8002')
abstract class ApiService
    with User, Profile, ProfileFamily, ProfileInsurance, Administrative {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("/api/upload")
  Future<String> uploadFile({
    @Header('Authorization') required String bearerToken,
    @Part() required File file,
  });
}

// region Administrative
mixin Administrative {
  @GET("/api/v1/set_mas_gen")
  Future<ProvinceListResponse> getProvince({
    @Header('Authorization') required String bearerToken,
    @Query('paginate') int limit = 100,
    @Query('where') String where = "\"group\"='PROVINSI'",
  });

  @GET("/api/v1/set_mas_gen")
  Future<CityListResponse> getCity({
    @Header('Authorization') required String bearerToken,
    @Query('paginate') int limit = 200,
    @Query('where') required String where,
  });

  @GET("/api/v1/set_mas_gen")
  Future<DistrictListResponse> getDistrict({
    @Header('Authorization') required String bearerToken,
    @Query('paginate') int limit = 100,
    @Query('where') required String where,
  });

  @GET("/api/v1/set_mas_gen")
  Future<VillageListResponse> getVillage({
    @Header('Authorization') required String bearerToken,
    @Query('paginate') int limit = 100,
    @Query('where') required String where,
  });
}
// endregion

// region User
mixin User {
  @POST("/api/signin")
  Future<LoginUserResponse> login({@Body() required LoginRequest request});

  @POST("/api/signup")
  Future<RegisterUserResponse> register({
    @Body() required RegisterRequest request,
  });

  @POST("/api/forgot-password")
  Future<GeneralApiResponse> forgotPassword({
    @Body() required ForgotPasswordRequest request,
  });

  @POST("/api/forgot-password-verification/{otp}")
  Future<GeneralApiResponse> forgotPasswordVerification({
    @Path() required String otp,
    @Body() required ForgotPasswordVerificationRequest request,
  });

  @GET("/api/signup-verification/{otp}")
  Future<GeneralApiResponse> registerVerification({
    @Path() required String otp,
  });

  @GET("/api/me")
  Future<UserModelResponse> me({
    @Header('Authorization') required String bearerToken,
  });

  @POST("/api/signout")
  Future<GeneralApiResponse> logout({
    @Header('Authorization') required String bearerToken,
  });
}
// endregion
