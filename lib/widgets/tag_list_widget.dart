import 'package:flutter/material.dart';

class TagListWidget extends StatefulWidget {
  TagListWidget({Key? key}) : super(key: key);

  @override
  _TagListWidgetState createState() => _TagListWidgetState();
}

class _TagListWidgetState extends State<TagListWidget> {
  final _tagList = <String>['All', "⚡ Popular", "⭐ Featured"];
  var selected = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 25),
      height: 40,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  selected = index;
                });
              },
              child: Container(
                height: 40,
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 10,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: selected == index
                      ? Theme.of(context).primaryColor.withOpacity(0.4)
                      : Colors.white,
                  border: Border.all(
                    color: selected == index
                        ? Theme.of(context).primaryColor
                        : Theme.of(context).primaryColor.withOpacity(0.4),
                    width: 0.8,
                  ),
                ),
                child: Text(
                  _tagList[index],
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            );
          },
          separatorBuilder: (_, index) => SizedBox(width: 30),
          itemCount: _tagList.length),
    );
  }
}
