import 'package:flutter/material.dart';
import 'app_color.dart';
import 'app_textstyle.dart';

class AppButton extends StatelessWidget {

  final String text;
  final VoidCallback onPressed;

  AppButton({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyle.button,
        ),
      ),
    );
  }
}