import 'package:dashboard_ui_app_batch21/widgets/background_widget.dart';
import 'package:dashboard_ui_app_batch21/widgets/home_app_bar.dart';
import 'package:dashboard_ui_app_batch21/widgets/search_bar.dart';
import 'package:dashboard_ui_app_batch21/widgets/tag_list.dart';
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
          BackgroundWidget(),
          Column(
            children: [
              HomeAppBar(),
              SearchBar(),
              TagList(),
            ],
          ),
        ],
      ),
    );
  }
}
