import 'package:flutter/material.dart';
import 'package:proj/signup.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Center(
              child: Column(
                children: [
                  
                  const Text(
                    "Login",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Add your details to login",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  TxtFormField("Email"),
                  const SizedBox(
                    height: 15,
                  ),
                  TxtFormField("Password"),
                  const SizedBox(
                    height: 20,
                  ),
                  signIn_Button(context, Colors.deepOrange, "Login"),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Forget your password ? ",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 60,
                  ),
                  Text(
                    "or Login With ",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Google_facebook_Button(context, Color.fromARGB(255, 2, 30, 189),
                      "Login with facebook"),
                  SizedBox(
                    height: 15,
                  ),
                  Google_facebook_Button(
                      context, Colors.red, "Login with Google"),
                  SizedBox(
                    height: 70,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don\"t have an Account ? ",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      GestureDetector(
                          onTap: (() => Get.to(SignUpScreen())),
                          child: Text(
                            " Sign Up ",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.deepOrange),
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

signIn_Button(BuildContext context, Color colors, String txt) => Container(
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

Google_facebook_Button(BuildContext context, Color colors, String txt) =>
    Container(
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
