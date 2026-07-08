// Karim Toson || kareemtoson1@gmail.com || Wed Jul 08 2026 19:40:30

import 'package:tempmealapp/features/auth/models/user_model.dart';

sealed class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSignUpSuccess extends AuthState {}

class AuthLoginuccess extends AuthState {
  final UserModel user;

  AuthLoginuccess({required this.user});
}

class AuthError extends AuthState {
  final String message;

  AuthError({required this.message});
}
