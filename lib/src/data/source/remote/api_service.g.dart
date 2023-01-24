// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _ApiService implements ApiService {
  _ApiService(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://backend.qqltech.com:8002';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<String> uploadFile({
    required bearerToken,
    required file,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = FormData();
    _data.files.add(MapEntry(
      'file',
      MultipartFile.fromFileSync(
        file.path,
        filename: file.path.split(Platform.pathSeparator).last,
      ),
    ));
    final _result = await _dio.fetch<String>(_setStreamType<String>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
        .compose(
          _dio.options,
          '/api/upload',
          queryParameters: queryParameters,
          data: _data,
        )
        .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = _result.data!;
    return value;
  }

  @override
  Future<LoginUserResponse> login({required request}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<LoginUserResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/signin',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = LoginUserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<RegisterUserResponse> register({required request}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<RegisterUserResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/signup',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = RegisterUserResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GeneralApiResponse> forgotPassword({required request}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GeneralApiResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/forgot-password',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GeneralApiResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GeneralApiResponse> forgotPasswordVerification({
    required otp,
    required request,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    _data.addAll(request.toJson());
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GeneralApiResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/forgot-password-verification/${otp}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GeneralApiResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GeneralApiResponse> registerVerification({required otp}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GeneralApiResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/signup-verification/${otp}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GeneralApiResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserModelResponse> me({required bearerToken}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<UserModelResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/me',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserModelResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<GeneralApiResponse> logout({required bearerToken}) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<GeneralApiResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/signout',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = GeneralApiResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserProfileResponse> qlMUser({
    required bearerToken,
    required userId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserProfileResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user/${userId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserProfileResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserProfileResponse> qlMUserUpdate({
    required bearerToken,
    required userId,
    required update,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(update.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserProfileResponse>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user/${userId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserProfileResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<UserProfileResponse> qlMUserUpdateAddress({
    required bearerToken,
    required userId,
    required update,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(update.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<UserProfileResponse>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user/${userId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = UserProfileResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FamilyListResponse> getFamilyList({
    required bearerToken,
    required where,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'where': where};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<FamilyListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user_d_keluarga',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FamilyListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FamilyDetailResponse> getFamilyDetail({
    required bearerToken,
    required familyUserId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FamilyDetailResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user_d_keluarga/${familyUserId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FamilyDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FamilyDetailResponse> addFamily({
    required bearerToken,
    required family,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(family.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FamilyDetailResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user_d_keluarga',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FamilyDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<FamilyDetailResponse> editFamily({
    required bearerToken,
    required familyUserId,
    required family,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(family.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<FamilyDetailResponse>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user_d_keluarga/${familyUserId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = FamilyDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<InsuranceListResponse> getInsuranceList({
    required bearerToken,
    required where,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'where': where};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<InsuranceListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user_d_asuransi',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = InsuranceListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<InsuranceDetailResponse> getInsuranceDetail({
    required bearerToken,
    required insuranceUserId,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<InsuranceDetailResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user_d_asuransi/${insuranceUserId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = InsuranceDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<InsuranceDetailResponse> addInsurance({
    required bearerToken,
    required insurance,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(insurance.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<InsuranceDetailResponse>(Options(
      method: 'POST',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user_d_asuransi',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = InsuranceDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<InsuranceDetailResponse> editInsurance({
    required bearerToken,
    required insuranceUserId,
    required insurance,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    _data.addAll(insurance.toJson());
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<InsuranceDetailResponse>(Options(
      method: 'PUT',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/ql_m_user_d_asuransi/${insuranceUserId}',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = InsuranceDetailResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<ProvinceListResponse> getProvince({
    required bearerToken,
    limit = 100,
    where = "\"group\"='PROVINSI'",
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'paginate': limit,
      r'where': where,
    };
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<ProvinceListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/set_mas_gen',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = ProvinceListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<CityListResponse> getCity({
    required bearerToken,
    limit = 200,
    required where,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'paginate': limit,
      r'where': where,
    };
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio
        .fetch<Map<String, dynamic>>(_setStreamType<CityListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/set_mas_gen',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = CityListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<DistrictListResponse> getDistrict({
    required bearerToken,
    limit = 100,
    required where,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'paginate': limit,
      r'where': where,
    };
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<DistrictListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/set_mas_gen',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = DistrictListResponse.fromJson(_result.data!);
    return value;
  }

  @override
  Future<VillageListResponse> getVillage({
    required bearerToken,
    limit = 100,
    required where,
  }) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{
      r'paginate': limit,
      r'where': where,
    };
    final _headers = <String, dynamic>{r'Authorization': bearerToken};
    _headers.removeWhere((k, v) => v == null);
    final _data = <String, dynamic>{};
    final _result = await _dio.fetch<Map<String, dynamic>>(
        _setStreamType<VillageListResponse>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/api/v1/set_mas_gen',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = VillageListResponse.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
