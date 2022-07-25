import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:proj/sign_in.dart';
import 'package:proj/signup.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Lottie.asset(
                        "asserts/96365-delivery-service-delivery-man.json",
                        height: 350,
                        repeat: false),
                    textmethod("The experience of ", 30),
                    textmethod("buying food quickly ", 30),
                    textmethod("The experience of buying food quickly ", 18)
                  ],
                ),
              ),
              GestureDetector(
                onTap: (() => Get.offAll(SignUpScreen()) ),
                child:
                    signup_signin_Button(context, Colors.deepOrange, "Sign Up"),
              ),
              SizedBox(
                height: 10,
              ),
              GestureDetector(
                onTap: (() => Get.offAll(SignInScreen()) ),
                child: signup_signin_Button(context, Colors.black, "Login"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  signup_signin_Button(BuildContext context, Color colors, String txt) =>
      Container(
        height: 50,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          txt,
          style: TextStyle(fontSize: 16, color: Colors.white),
        )),
      );

  textmethod(String title, double sizes) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 5),
      child: Text(
        title,
        style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: sizes,
            color: sizes == 30 ? Colors.black : Colors.grey),
      ),
    );
  }
}
