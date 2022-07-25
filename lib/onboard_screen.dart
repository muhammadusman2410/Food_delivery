import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:proj/onBoarding_controller.dart';
import 'package:proj/welcomeScreen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: onboardingdata.length,
                itemBuilder: (_, i) {
                  return Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Lottie.asset(onboardingdata[i].image, height: 300),
                        Text(
                          onboardingdata[i].title,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(
                          onboardingdata[i].disp,
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 18, color: Colors.grey),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                      onTap: () => Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const WelcomeScreen())),
                      child: const Text(
                        "Skip",
                        style: TextStyle(fontSize: 20),
                      )),
                  Text(
                    "skip",
                    style: TextStyle(fontSize: 20),
                  ),
                  GestureDetector(
                    onTap: () => null,
                    child: Row(
                      children: const [
                        Text(
                          "Next",
                          style: TextStyle(fontSize: 20),
                        ),
                        Icon(Icons.arrow_forward_ios_sharp),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
