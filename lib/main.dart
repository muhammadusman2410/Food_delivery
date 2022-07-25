import 'package:flutter/material.dart';
import 'package:proj/drawers.dart';
import 'package:proj/food_details.dart';
import 'package:proj/sign_in.dart';
import 'package:proj/signup.dart';
import 'package:proj/splash_screen.dart';
import 'package:get/get.dart';
import 'package:proj/welcomeScreen.dart';

import 'home_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

          primarySwatch: Colors.deepOrange,
          ),
      // home: FoodDetails(),
      // home: SignInScreen(),
      //  home: WelcomeScreen(),
      // home: SplashScreen(),
      // home: MyHomeScreen(),
      home: Drawers(),
    );
  }
}
