import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'screens/liquid_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xff01B2B8),
        accentColor: Color(0xff028B43),
      ),
      home: LiquidPage(),
    );
  }
}
