import 'package:fiutter/core/helper/app_textstyle.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.imagePath,
    required this.title,
    required this.backgroundColor,
  });

  final String imagePath;
  final String title;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Column(
        children: [
          CircleAvatar(
            radius: 60,
            backgroundColor: backgroundColor,
            child: Image.asset(
              imagePath,
              height: 80,
            ),
          ),

          SizedBox(height: 8),

          Text(
            title,
            style:AppTextStyle.homecatog
            ),

        ],
      ),
    );
  }
}