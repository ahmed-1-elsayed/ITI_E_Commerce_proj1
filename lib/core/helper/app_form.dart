import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_textstyle.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon ;
  final bool obscureText;

  const AppTextField({
    super.key,
    required this.hintText,
    this.icon,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      textAlign: TextAlign.start,
      decoration: InputDecoration(

        hintText: hintText,
        hintStyle: AppTextStyle.hint,

        prefixIcon: Icon(
          icon,
          color: AppColors.primary,
        ),

        // Show eye icon only for password fields
        suffixIcon: obscureText
            ? Icon(
          Icons.remove_red_eye_outlined,
          color: AppColors.primary,
        )
            : null,

        filled: true,
        fillColor: AppColors.border,

        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.border,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: AppColors.primary,
          ),
        ),
      ),
    );
  }
}