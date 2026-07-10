import 'package:flutter/material.dart';
import 'package:tempmealapp/features/home/models/meal.dart';
import 'package:tempmealapp/features/home/widgets/meal_card.dart';

class MealsSection extends StatelessWidget {
  const MealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: meals.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.75,
        ),
        itemBuilder: (context, index) {
          return MealCard(meal: meals[index]);
        },
      ),
    );
  }
}

final List<Meal> meals = [
  Meal(
    image: 'assets/meal.png',
    title: 'Healthy Taco Salad with fresh vegetable',
    kcal: '120 Kcal',
    time: '20 Min',
    mealType: ''
  ),
  Meal(
    image: 'assets/meal.png',
    title: 'Japanese-style Pancakes Recipe',
    kcal: '64 Kcal',
    time: '12 Min',
    mealType: ''

  ),
];
