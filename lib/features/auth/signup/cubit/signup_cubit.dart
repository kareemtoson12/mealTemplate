// Karim Toson || kareemtoson1@gmail.com || Fri Nov 06 2026 19:34:45
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tempmealapp/core/data_source/firebase_data_source.dart';
import 'package:tempmealapp/features/auth/signup/cubit/states.dart';

class SignupCubit extends Cubit<SignUpStates> {
  SignupCubit() : super(InititialState());
  FirebaseDataSource firebaseDataSource = FirebaseDataSource();
  Future<void> signUp(String email, String password, String name) async {
    try {
      emit(LoadingState());
      await firebaseDataSource.signUp(email, password, name);
      emit(SuccessState());
    } catch (e) {
      emit(ErrorState(e.toString()));
    }
  }
}
