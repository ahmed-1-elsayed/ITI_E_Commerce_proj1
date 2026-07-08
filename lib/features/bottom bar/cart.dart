import 'package:fiutter/core/helper/app_textstyle.dart';
import 'package:flutter/material.dart';

import '../../core/helper/app_button.dart';
import '../../core/helper/assets.dart';

import '../widgets/cart_item.dart';

class CartScreen extends StatelessWidget {
  CartScreen({super.key});

  final List<String> fruitName = [
    "Red Apple",
    "Original Banana",
    "Avocado Bowl",
    "Salmon",
    "Red Apple",
    "Original Banana",
    "Avocado Bowl",
    "Salmon",
  ];

  final List<String> fruitImage = [
    AppAssets.appleImage,
    AppAssets.bananaImage,
    AppAssets.avocadoImage,
    AppAssets.salmonImage,
    AppAssets.appleImage,
    AppAssets.bananaImage,
    AppAssets.avocadoImage,
    AppAssets.salmonImage,
  ];

  final List<String> price = [
    "\$4.99 kg",
    "\$5.99 kg",
    "\$24 st",
    "\$50 kg",
    "\$4.99 kg",
    "\$5.99 kg",
    "\$24 st",
    "\$50 kg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.orange,
        ),
        title: Text(
          "Cart",
          style: AppTextStyle.title,
        ),
      ),

      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              itemCount: fruitName.length,
              itemBuilder: (context, index) {
                return CartItem(
                  title: fruitName[index],
                  imagePath: fruitImage[index],
                  price: price[index],
                );
              },
            ),
          ),

          Padding(
            padding: EdgeInsets.all(10),
            child: AppButton(
              text: "CheckOut",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}