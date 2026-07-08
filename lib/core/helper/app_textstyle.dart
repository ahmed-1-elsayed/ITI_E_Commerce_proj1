import 'package:flutter/material.dart';
import 'app_color.dart';


class AppTextStyle {
  static TextStyle title = TextStyle(

    fontSize: 30,
    fontWeight: FontWeight.bold,
    color: AppColors.primary,
  );
  static TextStyle title1 = TextStyle(

    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: AppColors.primary,
  );
  static TextStyle homecatog = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w400,
    color: Color(0xff6D3805),
  );
  static TextStyle homeprod = TextStyle(
    color: Color(0xff7F4E1D),
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );

  static TextStyle hometitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w400,
    color: Color(0xff7F4E1D),
  );
  static TextStyle homesacondtit = TextStyle(

      color: Color(0xffFF5E00),
      fontSize: 18,
  );

  static TextStyle heading = TextStyle(
    fontSize: 22,
    fontWeight: FontWeight.w400,
    color: AppColors.brown,
  );

  static TextStyle body = TextStyle(
    fontSize: 18,
    color: AppColors.brown,
  );

  static TextStyle button = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
  static TextStyle buttonoutline = TextStyle(
    fontSize: 22,
    color: AppColors.primary,
    fontWeight: FontWeight.w500,
  );

  static TextStyle hint = TextStyle(
    fontSize: 16,
    color: Colors.grey,
  );
  static TextStyle price = TextStyle(
    color: Color(0xffFF5E00),
    fontSize: 22,
    fontWeight: FontWeight.w500,
  );
  static TextStyle wight = TextStyle(
    color: Color(0xff929292),
    fontSize: 13,
  );
}