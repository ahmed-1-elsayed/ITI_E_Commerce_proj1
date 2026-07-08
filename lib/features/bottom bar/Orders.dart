import 'package:flutter/material.dart';

import '../../core/helper/app_color.dart';
import '../../core/helper/app_textstyle.dart';
class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: AppColors.white,

      appBar: AppBar(
        backgroundColor: AppColors.white,
        elevation: 0,
        centerTitle: true,
        leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.orange),

        title: Text(
          "Orders",
          style: AppTextStyle.title,
        ),
      ),





    );
  }
}
