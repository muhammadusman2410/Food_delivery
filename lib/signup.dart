import 'package:flutter/material.dart';
import 'package:proj/sign_in.dart';

import 'package:get/get.dart';
class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Add your details to sign up",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TxtFormField("Name"),
                  const SizedBox(
                    height: 15,
                  ),
                  TxtFormField("Email"),
                  const SizedBox(
                    height: 15,
                  ),
                  TxtFormField("Mobile No"),
                  const SizedBox(
                    height: 15,
                  ),
                  TxtFormField("Address"),
                  const SizedBox(
                    height: 15,
                  ),
                  TxtFormField("Password"),
                  const SizedBox(
                    height: 15,
                  ),
                  TxtFormField("Confirm Password"),
                  SizedBox(
                    height: 20,
                  ),
                  signup_Button(context, Colors.deepOrange, "Sign Up"),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account ? ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                          // onTap: (() => Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => SignInScreen()))),
                          onTap: () => Get.to(SignInScreen()),
                          child: Text(
                            " Login ",
                            style: TextStyle(fontWeight: FontWeight.bold,
                                fontSize: 18, color: Colors.deepOrange),
                          )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  TxtFormField(String txt) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        hintText: txt,
        fillColor: Colors.black12,
        hintStyle: TextStyle(color: Colors.grey),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}

signup_Button(BuildContext context, Color colors, String txt) => Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      decoration:
          BoxDecoration(color: colors, borderRadius: BorderRadius.circular(10)),
      child: Center(
          child: Text(
        txt,
        style: TextStyle(fontSize: 16, color: Colors.white),
      )),
    );


   
