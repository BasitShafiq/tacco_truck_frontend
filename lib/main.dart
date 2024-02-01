import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taco/consts/colors.dart';
import 'package:taco/views/auth_screen/login_screen.dart';
import 'package:taco/views/auth_screen/signup_screen.dart';
import 'package:taco/views/find_screen/find_screen.dart';
import 'package:taco/views/home_screen/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.grey,
        splashColor: Colors.grey,

        // colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey),
        // useMaterial3: true,
      ),
      home: const LoginScreen(),
    );
  }
}
