import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tempmealapp/core/data_source/firebase_data_source.dart';
import 'package:tempmealapp/features/home/cubit/states.dart';
import 'package:tempmealapp/features/home/models/meal.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(InitalStates());
  FirebaseDataSource firebaseDataSource = FirebaseDataSource();
  List<Meal> allMeals = [];

  Future<void> getData() async {
    emit(LoadingStates());
    try {
      allMeals = await firebaseDataSource.getData();

      emit(SuccessStates(mealsData: allMeals));
    } catch (e) {
      emit(ErrorStates(errorMessaga: e.toString()));
    }
  }

  void filterdMeals(String categoryName) {
    List<Meal> filteredData = allMeals
        .where((meal) => meal.mealType == categoryName)
        .toList();

    emit(SuccessStates(mealsData: filteredData));
  }
}
