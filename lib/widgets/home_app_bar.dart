import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _size = MediaQuery.of(context).size;
    final _padding = MediaQuery.of(context).padding;
    return Container(
      padding: EdgeInsets.only(
        top: _padding.top,
        left: 25,
        right: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Home",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                "Sajib Adhikary",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 40, right: 40),
                transform: Matrix4.rotationZ(100),
                child: Stack(
                  children: [
                    Icon(
                      Icons.notifications_none_outlined,
                      size: 30,
                      color: Colors.grey,
                    ),
                    Positioned(
                      top: 1,
                      right: 1,
                      child: Container(
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ClipOval(
                child: Image.network("https://scontent.fdac22-1.fna.fbcdn.net/v/t1.6435-1/cp0/p50x50/127278212_2787327251536909_5626386683730241381_n.jpg?_nc_cat=107&ccb=1-5&_nc_sid=7206a8&_nc_ohc=XSpyE_EI9vgAX95T4qo&_nc_ht=scontent.fdac22-1.fna&oh=15111fe4e87909e4b409673e575c9294&oe=6181D0DB"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
