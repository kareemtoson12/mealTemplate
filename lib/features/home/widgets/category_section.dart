// Karim Toson || kareemtoson1@gmail.com || Tue Apr 28 2026 19:23:43

import 'package:flutter/material.dart';
import 'package:tempmealapp/core/styles/styles_manager.dart';
import 'package:tempmealapp/features/home/widgets/category_chip.dart';

class CategorySection extends StatefulWidget {
  const CategorySection({super.key});

  @override
  State<CategorySection> createState() => _CategorySectionState();
}

class _CategorySectionState extends State<CategorySection> {
  int selectedIndex = 0;

  final List<String> categories = ["Breakfast", "Lunch", "Dinner", "snacks"];

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 🔹 Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Category", style: StylesManager.titleText20Style),
            GestureDetector(
              onTap: () {},
              child: Text(
                "See All",
                style: StylesManager.titleText18StylePrimry,
              ),
            ),
          ],
        ),

        SizedBox(height: height * 0.02),

        // 🔹 Chips
        SizedBox(
          height: height * 0.05,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return CategoryChip(
                text: categories[index],
                isSelected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              );
            },
          ),
        ),
      ],
    );
  }
}
