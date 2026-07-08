// Karim Toson || kareemtoson1@gmail.com || Wed Jul 08 2026 19:40:58

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tempmealapp/core/data_source/firebase_data_source.dart';
import 'package:tempmealapp/features/auth/cubit/states.dart';
import 'package:tempmealapp/features/auth/models/user_model.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());
  FirebaseDataSource dataSource = FirebaseDataSource();
  Future<void> signUp(String email, String password, String name) async {
    emit(AuthLoading());
    try {
      await dataSource.signUp(email, password, name);
      emit(AuthSignUpSuccess());
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }

  Future<void> signIn(String email, String password) async {
    emit(AuthLoading());

    try {
      UserModel userdata = await dataSource.signIn(email, password);
      emit(AuthLoginuccess(user: userdata));
    } catch (e) {
      emit(AuthError(message: e.toString()));
    }
  }
}
