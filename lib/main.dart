import 'package:fiutter/features/bottom%20bar/bottombar.dart';
import 'package:fiutter/features/bottom%20bar/cart.dart';
import 'package:fiutter/features/bottom%20bar/home.dart';
import 'package:fiutter/features/bottom bar/home.dart';
import 'package:fiutter/features/loginpage/signin.dart';
import 'package:fiutter/features/signuppage/signup.dart';
import 'package:fiutter/features/On_bording/view.dart';
import 'package:fiutter/features/bottom bar/category.dart';
import 'package:fiutter/features/splash/splash.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeNav(),
    );
  }
}

