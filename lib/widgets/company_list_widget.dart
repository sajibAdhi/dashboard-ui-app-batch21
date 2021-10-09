import 'package:flutter/material.dart';
import '/models/company_info.dart';

class CompanyList extends StatelessWidget {
   CompanyList({Key? key}) : super(key: key);
  final _companyInfo = CompanyInfo.getCompanyList();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.separated(

          itemBuilder: (context, index) {
            return Container(
              child: Text(_companyInfo[index].title),
            );
          },
          separatorBuilder: (_, index) => SizedBox(),
          itemCount: _companyInfo.length,
      ),
    );
  }
}
