import 'package:flutter/material.dart';

import 'app_color.dart';
import 'app_textstyle.dart';

class AppOutlinedButton extends StatelessWidget {
  const AppOutlinedButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          fixedSize: Size(double.infinity, 50),
          side: BorderSide(color: Color(0xffFF5E00)),
        ),
        child: Text(text, style: AppTextStyle.buttonoutline),
      ),
    );
  }
}
