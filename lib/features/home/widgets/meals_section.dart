import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tempmealapp/features/home/cubit/home_cubit.dart';
import 'package:tempmealapp/features/home/cubit/states.dart';
import 'package:tempmealapp/features/home/widgets/meal_card.dart';

class MealsSection extends StatelessWidget {
  const MealsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        if (state is SuccessStates) {
          return Expanded(
            child: GridView.builder(
              itemCount: state.mealsData.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                return MealCard(meal: state.mealsData[index]);
              },
            ),
          );
        } else if (state is LoadingStates) {
          return Center(child: CircularProgressIndicator());
        } else {
          return Center(child: Text("Error"));
        }
      },
    );
  }
}
