import 'package:pasien/src/data/data.dart';
import 'package:pasien/src/domain/domain.dart';

class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._apiService);

  final ApiService _apiService;

  @override
  Future<LoginUserModel> login({
    required String identity,
    required String password,
  }) async {
    final result = await _apiService.login(
      request: LoginRequest(
        identity: identity,
        password: password,
      ),
    );
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<String> logout(String bearerToken) async {
    final result = await _apiService.logout(bearerToken: bearerToken);
    if (result.success) {
      return result.message!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<UserModel> me(String bearerToken, {String? userId}) async {
    late ApiResponse<UserModel> result;

    if (userId != null) {
      result = await _apiService.qlMUser(
        bearerToken: bearerToken,
        userId: userId,
      );
    } else {
      result = await _apiService.me(bearerToken: bearerToken);
    }

    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!);
  }

  @override
  Future<void> update(String bearerToken, UserModel update) async {
    final userId = update.userId!;
    final user = update.copyWith(userId: null);
    final result = await _apiService.qlMUserUpdate(
      bearerToken: bearerToken,
      userId: userId,
      update: user,
    );
    if (result.failed) {
      throw ApiException(result.message ?? 'Gagal mengupdate data diri');
    }
  }

  @override
  Future<RegisterUserModel> register({
    required String name,
    required String nik,
    required String email,
    required String phone,
    required String password,
  }) async {
    final result = await _apiService.register(
      request: RegisterRequest(
        name: name,
        nik: nik,
        email: email,
        phone: phone,
        password: password,
        confirmPassword: password,
      ),
    );
    if (result.success) {
      return result.data!;
    }
    throw ApiException(result.message!, errors: result.errors);
  }

  @override
  Future<String> registerVerification({required String otp}) async {
    final result = await _apiService.registerVerification(otp: otp);
    if (result.success) {
      return result.message ??
          'Pendaftaran berhasil, silakan untuk melakukan login';
    }
    throw ApiException(result.message!);
  }

  @override
  Future<String> forgotPassword({required String identity}) async {
    final request = ForgotPasswordRequest(identity: identity);
    final result = await _apiService.forgotPassword(request: request);
    if (result.success) {
      return result.message ??
          'Silakan cek email Anda untuk mendapatkan kode OTP';
    }
    throw ApiException(result.message!);
  }

  @override
  Future<String> changePassword({
    required String identity,
    required String otp,
    required String password,
  }) async {
    final request = ForgotPasswordVerificationRequest(
      identity: identity,
      password: password,
      confirmPassword: password,
    );
    final result = await _apiService.forgotPasswordVerification(
      request: request,
      otp: otp,
    );
    if (result.success) {
      return result.message ?? 'Password telah berhasi diupdate';
    }
    throw ApiException(result.message!);
  }
}
