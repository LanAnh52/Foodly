import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodly/Page/Account/login.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  static const String id = 'logo';

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
   @override
  void initState(){
    Timer(
      const Duration(
        seconds: 5
      ),
    () => Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => Login(),
        )),
    );
      
    super.initState();
  }
 
  @override
  Widget build(BuildContext context) {
    const colorizeColors = [
      Colors.grey,
      Colors.green,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 25,
      fontFamily: 'Horizon',
    );
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge, overlays:[] );
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("images/Logo.png"),
            //const SizedBox(height: 10,),
            SizedBox(
              child: AnimatedTextKit(
                animatedTexts: [
                  ColorizeAnimatedText(
                    'Chao mung ban den cua hang',
                    textStyle: colorizeTextStyle,
                    colors: colorizeColors,
                  ),
                ],
                isRepeatingAnimation: true,
                onTap: () {
                  print("Tap Event");
                },
              ),
            )
          ],
        ),
        
        
      ),
    );
  }
}
