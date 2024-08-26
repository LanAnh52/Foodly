import 'package:flutter/material.dart';
import 'package:foodly/Page/Home/onboarding.dart';


class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(child: OnBoarding()),
            Text('Bạn sẵn sàng đặt hàng gần nhất của bạn chưa?'),
            SizedBox(height: 20,),
            
          ],
        ),
      ),
    );
  }
}