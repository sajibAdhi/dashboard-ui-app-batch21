import 'package:dashboard_ui_app_batch21/models/company_info.dart';
import 'package:flutter/material.dart';

class CompanyItemHeader extends StatelessWidget {
  final CompanyInfo companyInfo;
  const CompanyItemHeader({Key? key, required this.companyInfo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(5),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  companyInfo.logoUrl,
                  fit: BoxFit.cover,
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
    );
  }
}
