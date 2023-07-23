import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:flutter_fadein/flutter_fadein.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeIn(
          duration: Duration(seconds: controller.duration),
          child: const Text(
            'Restaurants \nFinder',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
