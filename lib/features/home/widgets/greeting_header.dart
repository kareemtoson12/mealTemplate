// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 19:19:01

import 'package:flutter/material.dart';
import 'package:tempmealapp/core/styles/colors_manager.dart';
import 'package:tempmealapp/core/styles/styles_manager.dart';

class GreetingHeader extends StatelessWidget {
  const GreetingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Icon(Icons.wb_sunny_outlined, color: ColorsManager.primaryColor),
            const SizedBox(width: 8),
            Text("Good Morning", style: StylesManager.titleText20Style),
          ],
        ),

        Icon(Icons.shopping_cart_outlined, size: 28),
      ],
    );
  }
}
