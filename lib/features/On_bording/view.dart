import 'package:fiutter/core/helper/assets.dart';
import 'package:fiutter/features/loginpage/signin.dart';
import 'package:fiutter/features/signuppage/signup.dart';
import 'package:flutter/material.dart';

import '../../core/helper/app_button.dart';
import '../../core/helper/app_color.dart';

import '../../core/helper/app_textstyle.dart';
import '../../core/helper/button_outline.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 70),

            Image.asset(AppAssets.wolcompage),

            const SizedBox(height: 25),

            Text(
              "Welcome to our app",
              textAlign: TextAlign.center,
              style: AppTextStyle.heading,
            ),

            const SizedBox(height: 20),

            Text(
              "Shop online and get groceries\n"
              "delivered from stores to your home\n"
              "in as fast as 1 hour.",
              textAlign: TextAlign.center,
              style: AppTextStyle.body,
            ),

            const Spacer(),

            AppButton(
              text: "Sign Up",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SignupScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 15),

            AppOutlinedButton(
              text: "Sign In",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
