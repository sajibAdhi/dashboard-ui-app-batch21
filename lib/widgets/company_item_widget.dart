import 'package:dashboard_ui_app_batch21/models/company_info.dart';
import 'package:flutter/material.dart';

class CompanyItemWidget extends StatelessWidget {
  final CompanyInfo companyInfo;

  const CompanyItemWidget(this.companyInfo, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
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
        ],
      ),
    );
  }
}
