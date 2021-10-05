import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'home_page.dart';

class LiquidPage extends StatelessWidget {
  const LiquidPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: [
          HomePage(),
          Container(color: Colors.yellow),
          Container(color: Colors.red),
          Container(color: Colors.blue),
        ],
        slideIconWidget: Icon(Icons.arrow_back_ios),
        positionSlideIcon: 0.8,
      ),
    );
  }
}
