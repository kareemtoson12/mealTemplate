import 'package:tempmealapp/features/home/models/meal.dart';

sealed class HomeStates {}

class InitalStates extends HomeStates {}

class LoadingStates extends HomeStates {}

class SuccessStates extends HomeStates {
  final List<Meal> mealsData;

  SuccessStates({required this.mealsData});
}

class ErrorStates extends HomeStates {
  final String errorMessaga;

  ErrorStates({required this.errorMessaga});
}
