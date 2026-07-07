// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 18:04:52

import 'package:flutter/material.dart';
import 'package:tempmealapp/core/styles/colors_manager.dart';
import 'package:tempmealapp/core/styles/styles_manager.dart';
import 'package:tempmealapp/core/widgtes/button_widget.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //hight
    final double height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: ColorsManager.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Image.asset('assets/onboarding.png'),
          Center(child: SizedBox(height: height * 0.07)),
          Text(
            'Help your path to health \n goals with happiness',
            style: StylesManager.white30Bold,
          ),

          SizedBox(height: height * 0.08),
          ButtonWidget(
            onpress: () {
              Navigator.pushNamed(context, '/signup');
            },
            text: 'Start',
          ),
        ],
      ),
    );
  }
}
