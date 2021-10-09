import 'package:dashboard_ui_app_batch21/widgets/background_widget.dart';
import 'package:dashboard_ui_app_batch21/widgets/company_list_widget.dart';
import 'package:dashboard_ui_app_batch21/widgets/home_app_bar_widget.dart';
import 'package:dashboard_ui_app_batch21/widgets/search_bar_widget.dart';
import 'package:dashboard_ui_app_batch21/widgets/tag_list_widget.dart';
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
      bottomNavigationBar: Theme(
        data: ThemeData(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(
                Icons.home,
                size: 28,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Case',
              icon: Icon(
                Icons.cases_outlined,
                size: 28,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Text(''),
            ),
            BottomNavigationBarItem(
              label: 'Chat',
              icon: Icon(
                Icons.chat_outlined,
                size: 28,
              ),
            ),
            BottomNavigationBarItem(
              label: 'Person',
              icon: Icon(
                Icons.person_outline,
                size: 28,
              ),
            ),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Theme.of(context).primaryColor,
          type: BottomNavigationBarType.fixed,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        elevation: 0,
        backgroundColor: Theme.of(context).accentColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
