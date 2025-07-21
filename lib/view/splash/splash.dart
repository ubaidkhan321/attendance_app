import 'package:attendace_app/resource/constant/assets.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          Assets.APP_LOGO,
          width: double.maxFinite,
          height: 200,
        ),
      ),
    );
  }
}
