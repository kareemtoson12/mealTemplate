// Karim Toson || kareemtoson1@gmail.com || Tue Jul 07 2026 13:53:52

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tempmealapp/core/data_source/firebase_data_source.dart';
import 'package:tempmealapp/features/auth/cubit/auth_states.dart';
import 'package:tempmealapp/features/auth/models/user_model.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  final FirebaseDataSource _firebaseDataSource = FirebaseDataSource();

  Future<void> signUp(String email, String password, String name) async {
    emit(AuthLoading());
    try {
      await _firebaseDataSource.signUp(email, password, name);
      emit(AuthSignUpSuccess());
    } catch (e) {
      emit(AuthFailure(errMessage: e.toString()));
    }
  }

  Future<void> login(String email, String password) async {
    emit(AuthLoading());
    try {
      UserModel user = await _firebaseDataSource.login(email, password);
      emit(AuthLoginSuccess(user: user));
    } catch (e) {
      emit(AuthFailure(errMessage: e.toString()));
    }
  }
}
