import 'package:demo_app/pages/home_page.dart';
import 'package:demo_app/pages/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(SplashScreen(
    key: UniqueKey(),
    onInitializationComplete: () {
      runApp( TTSApp(key: UniqueKey()));
    },
  ));
}
