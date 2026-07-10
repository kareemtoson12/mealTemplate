// Karim Toson || kareemtoson1@gmail.com || Fri Jul 10 2026 17:14:39

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tempmealapp/core/data_source/firebase_data_source.dart';
import 'package:tempmealapp/features/home/cubit/states.dart';
import 'package:tempmealapp/features/home/models/meal.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());
  FirebaseDataSource dataSource = FirebaseDataSource();
  List<Meal> meals = [];
  List<Meal> filterdMeals = [];

  Future<void> getMeals() async {
    emit(HomeLoading());

    try {
      meals = await dataSource.getData();
      emit(HomeSucess(meals: meals));
    } catch (e) {
      emit(HomeError(message: e.toString()));
    }
  }

  void filterMeals(String query) {
    emit(HomeLoading());

    try {
      filterdMeals = meals.where((meal) {
        return meal.mealType == query;
      }).toList();
      emit(HomeSucess(meals: filterdMeals));
    } catch (e) {
      emit(HomeError(message: e.toString()));
    }
  }
}
