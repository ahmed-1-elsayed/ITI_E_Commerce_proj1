
import 'package:fiutter/core/helper/app_textstyle.dart';
import 'package:flutter/material.dart';

import '../../core/helper/assets.dart';
import '../widgets/CategoryItem.dart';


class CategoriesScreen extends StatelessWidget {
  CategoriesScreen({super.key});

  final List<String> categoryName = [
    "Fruits",
    "Vegetables",
    "Meat",
    "Fish",
    "Sea Food",
    "Juice",
    "Egg & Milk",
    "Ice Cream",
    "Cake",
    "Fruits",
    "Vegetables",
    "Meat",
    "Fish",
    "Sea Food",
    "Juice",
    "Egg & Milk",
    "Ice Cream",
    "Cake",
  ];

  final List<String> categoryImage = [
    AppAssets.enab,
    AppAssets.orange,
    AppAssets.meat,
    AppAssets.fish,
    AppAssets.seafood,
    AppAssets.juice,
    AppAssets.Egg,
    AppAssets.ice,
    AppAssets.cake,
    AppAssets.enab,
    AppAssets.orange,
    AppAssets.meat,
    AppAssets.fish,
    AppAssets.seafood,
    AppAssets.juice,
    AppAssets.Egg,
    AppAssets.ice,
    AppAssets.cake,
  ];

  final List<Color> categoryColor = [
    Color(0xffEDD0FF),
    Color(0xffFFD9BA),
    Color(0xffFACCCC),
    Color(0xffFACCCC),
    Color(0xffFFE59A),
    Color(0xffD8F1C9),
    Color(0xffD8F1FF),
    Color(0xffF7D8FF),
    Color(0xffFFD9BA),
    Color(0xffEDD0FF),
    Color(0xffFFD9BA),
    Color(0xffFACCCC),
    Color(0xffFACCCC),
    Color(0xffFFE59A),
    Color(0xffD8F1C9),
    Color(0xffD8F1FF),
    Color(0xffF7D8FF),
    Color(0xffFFD9BA),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          "Categories",
          style: AppTextStyle.title,
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [

            TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: Icon(Icons.search),
                filled: true,
                fillColor: Color(0xffF5F5F5),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 25),

            Expanded(
              child: GridView.builder(
                itemCount: categoryName.length,
                gridDelegate:
                const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 25,
                  crossAxisSpacing: 15,
                  childAspectRatio: .66,
                ),
                itemBuilder: (context, index) {
                  return CategoryItem(
                    title: categoryName[index],
                    imagePath: categoryImage[index],
                    backgroundColor: categoryColor[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}