// Karim Toson || kareemtoson1@gmail.com || Tue Jul 07 2026 13:53:45

import 'package:tempmealapp/features/auth/models/user_model.dart';

sealed class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

final class AuthLoginSuccess extends AuthState {
  final UserModel user;

  AuthLoginSuccess({required this.user});
}

final class AuthSignUpSuccess extends AuthState {}

final class AuthFailure extends AuthState {
  final String errMessage;

  AuthFailure({required this.errMessage});
}
