import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodly/Page/Home/onboarding.dart';
import 'package:foodly/Page/Home/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute:SplashScreen.id,
      routes: {
        SplashScreen.id :(context)=> const SplashScreen(),
        OnBoarding.id :(context)=> const OnBoarding(),
        
      }
    );
  }
}

