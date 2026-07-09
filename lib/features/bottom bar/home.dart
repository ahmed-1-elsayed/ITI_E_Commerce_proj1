import 'package:flutter/material.dart';

import '../../core/helper/app_textstyle.dart';
import '../../core/helper/assets.dart';
import '../widgets/CategoryItem.dart';
import '../widgets/product.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> categoryName = [
    "Fruits",
    "Vegetables",
    "Meat",
    "Fish",
    "Fruits",
    "Vegetables",
    "Meat",
    "Fish",
  ];

  final List<String> categoryImage = [
    AppAssets.enab,
    AppAssets.orange,
    AppAssets.meat,
    AppAssets.fish,
    AppAssets.enab,
    AppAssets.orange,
    AppAssets.meat,
    AppAssets.fish,
  ];

  final List<Color> categoryColor = [
    Color(0xffEDD0FF),
    Color(0xffFFD9BA),
    Color(0xffFACCCC),
    Color(0xffFACCCC),
    Color(0xffEDD0FF),
    Color(0xffFFD9BA),
    Color(0xffFACCCC),
    Color(0xffFACCCC),
  ];

  final List<String> productName = [
    "Red Apple",
    "Original Banana",
    "Po Banana",
    "Meat",
  ];

  final List<String> productImage = [
    AppAssets.appleImage,
    AppAssets.bananaImage,
    AppAssets.bananaImage,
    AppAssets.meat,
  ];

  final List<String> productPrice = ["\$4.99", "\$5.99", "\$4.50", "\$4.00"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 60),

            Image.asset(AppAssets.Homescreen),

            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Categories", style: AppTextStyle.hometitle),

                Text("See All", style: AppTextStyle.homesacondtit),
              ],
            ),

            const SizedBox(height: 20),

            SizedBox(
              height: 180,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: categoryName.length,
                itemBuilder: (context, index) {
                  return CategoryItem(
                    title: categoryName[index],
                    imagePath: categoryImage[index],
                    backgroundColor: categoryColor[index],
                  );
                },
              ),
            ),

            const SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular Deals", style: AppTextStyle.hometitle),

                Text("See All", style: AppTextStyle.homesacondtit),
              ],
            ),

            const SizedBox(height: 30),

            SizedBox(
              height: 190,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: productName.length,
                itemBuilder: (context, index) {
                  return ProductItem(
                    title: productName[index],
                    imagePath: productImage[index],
                    price: productPrice[index],
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
