import 'package:dashboard_ui_app_batch21/models/company_info.dart';
import 'package:flutter/cupertino.dart';
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.blue.withOpacity(0.5),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image.asset(companyInfo.logoUrl),
                  ),
                  SizedBox(width: 30),
                  Text(companyInfo.company),
                ],
              ),
              Icon(Icons.bookmark_add_outlined),
            ],
          ),
          SizedBox(height: 15),
          Text(companyInfo.title),
          SizedBox(height: 15),
          Row(
            children: [
              Icon(Icons.location_on_outlined),
              SizedBox(width: 10),
              Text(companyInfo.location),
            ],
          ),
        ],
      ),
    );
  }
}
