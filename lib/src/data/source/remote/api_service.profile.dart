part of 'api_service.dart';

// region Profile
mixin Profile {
  @GET("/api/v1/ql_m_user/{id}")
  Future<UserProfileResponse> qlMUser({
    @Header('Authorization') required String bearerToken,
    @Path('id') required String userId,
  });

  @PUT("/api/v1/ql_m_user/{id}")
  Future<UserProfileResponse> qlMUserUpdate({
    @Header('Authorization') required String bearerToken,
    @Path('id') required String userId,
    @Body() required UserModel update,
  });

  @PUT("/api/v1/ql_m_user/{id}")
  Future<UserProfileResponse> qlMUserUpdateAddress({
    @Header('Authorization') required String bearerToken,
    @Path('id') required String userId,
    @Body() required AddressModel update,
  });
}
// endregion

// region Profile-Family
mixin ProfileFamily {
  @GET("/api/v1/ql_m_user_d_keluarga")
  Future<FamilyListResponse> getFamilyList({
    @Header('Authorization') required String bearerToken,
    @Query('where') required String where,
  });

  @GET("/api/v1/ql_m_user_d_keluarga/{familyUserId}")
  Future<FamilyDetailResponse> getFamilyDetail({
    @Header('Authorization') required String bearerToken,
    @Path() required String familyUserId,
  });

  @POST("/api/v1/ql_m_user_d_keluarga")
  Future<FamilyDetailResponse> addFamily({
    @Header('Authorization') required String bearerToken,
    @Body() required FamilyContent family,
  });

  @PUT("/api/v1/ql_m_user_d_keluarga/{familyUserId}")
  Future<FamilyDetailResponse> editFamily({
    @Header('Authorization') required String bearerToken,
    @Path() required String familyUserId,
    @Body() required FamilyContent family,
  });
}
// endregion

// region Profile-Insurance
mixin ProfileInsurance {
  @GET("/api/v1/ql_m_user_d_asuransi")
  Future<InsuranceListResponse> getInsuranceList({
    @Header('Authorization') required String bearerToken,
    @Query('where') required String where,
  });

  @GET("/api/v1/ql_m_user_d_asuransi/{insuranceUserId}")
  Future<InsuranceDetailResponse> getInsuranceDetail({
    @Header('Authorization') required String bearerToken,
    @Path() required String insuranceUserId,
  });

  @POST("/api/v1/ql_m_user_d_asuransi")
  Future<InsuranceDetailResponse> addInsurance({
    @Header('Authorization') required String bearerToken,
    @Body() required InsuranceContent insurance,
  });

  @PUT("/api/v1/ql_m_user_d_asuransi/{insuranceUserId}")
  Future<InsuranceDetailResponse> editInsurance({
    @Header('Authorization') required String bearerToken,
    @Path() required String insuranceUserId,
    @Body() required InsuranceContent insurance,
  });
}
// endregion
