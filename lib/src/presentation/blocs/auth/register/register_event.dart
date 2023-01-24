part of 'register_bloc.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();
}

class OnNameChanged extends RegisterEvent {
  const OnNameChanged(this.name);
  final String name;
  @override
  List<Object?> get props => [name];
}

class OnUsernameChanged extends RegisterEvent {
  const OnUsernameChanged(this.username);
  final String username;
  @override
  List<Object?> get props => [username];
}

class OnEmailChanged extends RegisterEvent {
  const OnEmailChanged(this.email);
  final String email;
  @override
  List<Object?> get props => [email];
}

class OnNikChanged extends RegisterEvent {
  const OnNikChanged(this.nik);
  final String nik;
  @override
  List<Object?> get props => [nik];
}

class OnPhoneChanged extends RegisterEvent {
  const OnPhoneChanged(this.phone);
  final String phone;
  @override
  List<Object?> get props => [phone];
}

class OnPhoneCountryDataChanged extends RegisterEvent {
  const OnPhoneCountryDataChanged(this.phoneCountryData);
  final PhoneCountryData? phoneCountryData;
  @override
  List<Object?> get props => [phoneCountryData];
}

class OnPasswordChanged extends RegisterEvent {
  const OnPasswordChanged(this.password);
  final String password;
  @override
  List<Object?> get props => [password];
}

class OnPasswordConfirmationChanged extends RegisterEvent {
  const OnPasswordConfirmationChanged(this.password);
  final String password;
  @override
  List<Object?> get props => [password];
}

class TogglePasswordObscured extends RegisterEvent {
  const TogglePasswordObscured(this.obscure);
  final bool obscure;
  @override
  List<Object?> get props => [obscure];
}

class TogglePasswordConfirmationObscured extends RegisterEvent {
  const TogglePasswordConfirmationObscured(this.obscure);
  final bool obscure;
  @override
  List<Object?> get props => [obscure];
}

class SubmitRegister extends RegisterEvent {
  const SubmitRegister();
  @override
  List<Object?> get props => [];
}
