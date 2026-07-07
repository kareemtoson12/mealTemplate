// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 19:16:43

import 'package:flutter/material.dart';
import 'package:tempmealapp/features/home/widgets/category_section.dart';
import 'package:tempmealapp/features/home/widgets/greeting_header.dart';
import 'package:tempmealapp/features/home/widgets/meals_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(width * 0.05),
          child: Column(
            children: [
              //header
              GreetingHeader(),
              SizedBox(height: height * 0.03),
              //categories
              CategorySection(),
              //meals
              SizedBox(height: height * 0.03),
              MealsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
