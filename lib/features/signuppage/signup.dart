import 'package:fiutter/core/helper/assets.dart';
import 'package:flutter/material.dart';


import '../../core/helper/app_button.dart';
import '../../core/helper/app_color.dart';

import '../../core/helper/app_form.dart';
import '../../core/helper/app_textstyle.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,

      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back_ios,
          color: AppColors.primary,
        ),
        title: Text(
          "Sign Up",
          style: AppTextStyle.title,
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [

              SizedBox(height: 50),

              Image.asset(
                AppAssets.logo,
                height: 300,
              ),

              SizedBox(height: 20),

              Text(
                "Please enter your information to\ncreate an account.",
                style: AppTextStyle.body,
              ),

              SizedBox(height: 20),

              AppTextField(
                hintText: "Email",
              ),

              SizedBox(height: 20),
              AppTextField(
                hintText: "Password",
                obscureText: true,
              ),

              SizedBox(height: 20),

              AppTextField(
                hintText: "Confirm Password",
                obscureText: true,
              ),

              SizedBox(height: 30),

              AppButton(
                text: "Sign Up",
                onPressed: () {},
              ),

              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}