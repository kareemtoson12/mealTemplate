import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tempmealapp/core/data_source/firebase_data_source.dart';
import 'package:tempmealapp/features/auth/login/cubit/states.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  FirebaseDataSource firebaseDataSource = FirebaseDataSource();
  Future<void> login({required String email, required String password}) async {
    try {
      emit(LoginLoading());
      await firebaseDataSource.signIn(email, password);
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailure(errorMessage: e.toString()));
    }
  }
}
