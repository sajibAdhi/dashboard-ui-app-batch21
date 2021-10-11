import 'package:dashboard_ui_app_batch21/widgets/company_item_widget.dart';
import 'package:flutter/material.dart';
import '/models/company_info.dart';
import 'company_details.dart';

class CompanyListWidget extends StatelessWidget {
  CompanyListWidget({Key? key}) : super(key: key);
  final companyInfo = CompanyInfo.getCompanyList();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
              onTap: () {
                showModalBottomSheet(
                  isScrollControlled: true,
                  context: context,
                builder: (context) => CompanyDetails(companyInfo: companyInfo[index]),
                );
              },
              child: CompanyItemWidget(
                companyInfo[index],
              ));
        },
        separatorBuilder: (_, index) => SizedBox(width: 20),
        itemCount: companyInfo.length,
      ),
    );
  }
}
