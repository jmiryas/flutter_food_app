import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../screens/home_screen.dart';
import '../screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool loadingTime = true;

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 3000), () {
      setState(() {
        loadingTime = false;
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food App',
      home: loadingTime ? const SplashScreen() : const HomeScreen(),
    );
  }
}
