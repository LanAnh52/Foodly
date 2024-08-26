
import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:foodly/Widget/constantonboarding.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});
  static const String id = 'introduce';

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}
final _controller = PageController(
  initialPage: 0,
);

int _currentPage = 0;

List<Widget> _page = [
 Column(
  children: [
    Expanded(child: Image.asset('images/Đặt đồ ăn.png')),
    const Text('Đặt hàng trực tuyến', style: kPageViewTextStyle, ),
  ],
 ),

 Column(
  children: [
    Expanded(child: Image.asset('images/Map.png')),
    const Text('Đặt địa điểm giao hàng', style: kPageViewTextStyle,),
  ],
 ),

 Column(
  children: [
    Expanded(child: Image.asset('images/Giao hàng.png')),
    const Text('Giao hàng nhanh chóng', style: kPageViewTextStyle,),
  ],
 )
];
class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return 
      Column(
        children: [
          Expanded(
            child: PageView(
              controller: _controller ,
              children: _page,
              onPageChanged:(index){
                setState(() {
                   _currentPage = index;
                });
             }
            ),
          ),
          SizedBox(height: 25,),
          DotsIndicator(
            dotsCount: _page.length,
            position: _currentPage.toDouble(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
              activeColor: Colors.greenAccent,
            ), 
          ), 
          SizedBox(height: 200,),     

        ],
      );
  
  }
}