import 'package:dashboard_ui_app_batch21/widgets/home_app_bar.dart';
import 'package:dashboard_ui_app_batch21/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              Expanded(
                flex: 2,
                child: Container(),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  color: Colors.grey[200],
                ),
              ),
            ],
          ),
          Column(
            children: [
              HomeAppBar(),
              SearchBar(),
            ],
          ),
        ],
      ),
    );
  }
}
