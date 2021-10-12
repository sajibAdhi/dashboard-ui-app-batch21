import '/widgets/background_widget.dart';
import '/widgets/bottom_navigation_bar_widget.dart';
import '/widgets/company_list_widget.dart';
import '/widgets/home_app_bar_widget.dart';
import '/widgets/search_bar_widget.dart';
import '/widgets/tag_list_widget.dart';
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
              HomeAppBarWidget(),
              SearchBarWidget(),
              TagListWidget(),
              CompanyListWidget(),
            ],
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBarWidget(),
    );
  }
}
