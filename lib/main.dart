import 'package:flutter/material.dart';
import 'package:flutterapplication/Signup_screen.dart';
import 'package:flutterapplication/home_screen.dart';
import 'package:flutterapplication/login_screen.dart';
import 'package:flutterapplication/paractice_page.dart';
import 'package:flutterapplication/profile_screen.dart';
import 'package:flutterapplication/search_screen.dart';
import 'package:flutterapplication/setting_screen.dart';

import 'package:flutterapplication/splash_screen.dart';

import 'bottum_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      home: SplashScreen()
    );
  }
}

