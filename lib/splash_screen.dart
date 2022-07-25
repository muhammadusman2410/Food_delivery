import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';
import 'onboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    //   await Future.delayed(const Duration (seconds: 2),(){});
    // //   Navigator.pushReplacement(
    // //   context,
    // //   MaterialPageRoute(builder: (context) =>  OnBoardingScreen()));
    gotosplash();
    hidestatusbar();
  }

  gotosplash() async {
    await Future.delayed(const Duration(seconds: 3), () {});
    Get.offAll(OnBoardingScreen());
    
  }

  hidestatusbar() {
    // SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('asserts/89626-order-delivery.json'),
          ],
        ),
      ),
    );
  }
}
