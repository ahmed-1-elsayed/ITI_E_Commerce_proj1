import 'package:fiutter/core/helper/assets.dart';
import 'package:flutter/material.dart';

import '../../core/helper/app_button.dart';
import '../../core/helper/app_color.dart';
import '../../core/helper/app_form.dart';
import '../../core/helper/app_textstyle.dart';


class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

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
          color: AppColors.primary,
        ),
        title: Text(
          "Sign In",
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
                "Enter your Email and\npassword to access your account.",
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

              Text(
                "Forget Password",
                textAlign: TextAlign.right,
                style: AppTextStyle.title1,
              ),

              SizedBox(height: 20),

              AppButton(
                text: "Sign In",
                onPressed: () {
                  // Navigator.push(...)
                },
              ),

              SizedBox(height: 15),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text(
                    "Don't have an account? ",
                    style: AppTextStyle.body,
                  ),

                  Text(
                    "Sign Up",
                    style: AppTextStyle.title1
                    ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}