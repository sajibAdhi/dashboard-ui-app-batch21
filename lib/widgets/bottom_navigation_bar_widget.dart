import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key}) : super(key: key);

  @override
  _BottomNavigationBarWidgetState createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  final Color _buttonColor = Colors.black;
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.grey,
      items: <Widget>[
        Icon(Icons.home, size: 30, color: _buttonColor),
        Icon(Icons.backpack_outlined, size: 30, color: _buttonColor),
        Icon(Icons.add, size: 30, color: _buttonColor),
        Icon(Icons.chat_outlined, size: 30, color: _buttonColor),
        Icon(Icons.person_off_outlined, size: 30, color: _buttonColor),
      ],
      buttonBackgroundColor: Colors.grey,
    );
  }
}
