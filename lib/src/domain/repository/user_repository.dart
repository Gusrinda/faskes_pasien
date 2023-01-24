import 'package:pasien/src/data/data.dart';

abstract class UserRepository {
  Future<LoginUserModel> login({
    required String identity,
    required String password,
  });

  Future<RegisterUserModel> register({
    required String name,
    required String nik,
    required String email,
    required String phone,
    required String password,
  });

  Future<String> registerVerification({required String otp});

  Future<UserModel> me(String bearerToken, {String? userId});

  Future<void> update(String bearerToken, UserModel update);

  Future<String> logout(String bearerToken);

  Future<String> forgotPassword({required String identity});

  Future<String> changePassword({
    required String identity,
    required String otp,
    required String password,
  });
}
