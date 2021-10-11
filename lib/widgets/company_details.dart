import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CompanyDetails extends StatelessWidget {
  final companyInfo;

  const CompanyDetails({Key? key, required this.companyInfo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      decoration: BoxDecoration(
        color: Colors.yellow,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 5,
              width: 60,
              color: Colors.grey,
            ),
            // First Column
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        companyInfo.logoUrl,
                        fit: BoxFit.contain,
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SizedBox(width: 30),
                    Text(
                      companyInfo.company,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Icon(Icons.bookmark_add_outlined),
              ],
            ),
            SizedBox(height: 15),

            // Second Column
            Text(
              companyInfo.title,
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15),
            // Third Column
            Row(
              children: [
                Icon(Icons.location_on_outlined),
                SizedBox(width: 10),
                Text(
                  companyInfo.location,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Text('Requirements'),
            SizedBox(height: 15),
            ...companyInfo.req
                .map((e) => Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(5),
                            height: 5,
                            width: 5,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.black,
                            ),
                          ),
                          SizedBox(width: 20),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              minHeight: 300,
                            ),
                            child: Text(
                              e,
                            ),
                          ),
                        ],
                      ),
                    ))
                .toList(),
            Container(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  elevation: 0,
                  primary: Theme.of(context).primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text('sadasd'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
