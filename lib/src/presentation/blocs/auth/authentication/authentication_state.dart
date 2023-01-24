part of 'authentication_bloc.dart';

enum AuthenticationStatus { unknown, authenticated, unauthenticated, me }

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState({
    @Default(AuthenticationStatus.unknown) AuthenticationStatus status,
    LoginUserModel? loginUser,
    UserModel? userModel,
    String? userId,
  }) = _AuthenticationState;

  factory AuthenticationState.authenticated(LoginUserModel loginUser) =>
      AuthenticationState(
          status: AuthenticationStatus.authenticated, loginUser: loginUser);

  factory AuthenticationState.unauthenticated() =>
      const AuthenticationState(status: AuthenticationStatus.unauthenticated);

  factory AuthenticationState.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationStateFromJson(json);
}
