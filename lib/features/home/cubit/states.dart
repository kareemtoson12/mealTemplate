// Karim Toson || kareemtoson1@gmail.com || Fri Jul 10 2026 17:14:33

import 'package:tempmealapp/features/home/models/meal.dart';

sealed class HomeStates {}

class HomeInitial extends HomeStates {}

class HomeLoading extends HomeStates {}

class HomeSucess extends HomeStates {
  final List<Meal> meals;
  HomeSucess({required this.meals});
}

class HomeError extends HomeStates {
  final String message;

  HomeError({required this.message});
}
