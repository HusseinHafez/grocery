import 'dart:async';



import 'package:flutter/material.dart';
import 'package:grocery/view/home_screen.dart';
import 'package:grocery/view/on_boarding_screen.dart';

import '../size_config.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(milliseconds: 1900), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(
            builder: (context) => const OnboardingScreen(),
          ),
              (route) => false);
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: TweenAnimationBuilder<double>(
          duration: const Duration(milliseconds: 1200),
          tween: Tween(begin: 0, end: 1),
          builder: ((_, value, __) => Opacity(
            opacity: value,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Center(
                child: Image.asset('assets/images/image.png',
                  color: Colors.deepOrange,
                  scale: 1.3,
                ),
              ),
            ),
          ))),
    );
  }
}
