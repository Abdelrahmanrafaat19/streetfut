import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/feature/login/presentation/views/login.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.of(context).pushReplacement(PageTransition(
            child: const LoginScreen(),
            alignment: Alignment.center,
            type: PageTransitionType.leftToRightWithFade,
            duration: const Duration(seconds: 2)));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 70.h),
          child: Image.asset(
            "assetes/logo/logofut.png",
          ),
        ),
      ),
    );
  }
}
