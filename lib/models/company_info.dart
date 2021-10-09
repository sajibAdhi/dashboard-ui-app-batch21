class CompanyInfo {
  String logoUrl, company, title, location, time;
  List<String> req;

  CompanyInfo(this.logoUrl, this.company, this.title, this.location, this.time,
      this.req);

  static List<CompanyInfo> getCompanyList() {
    return [
      CompanyInfo(
        "assets/icons/google.png",
        "Google LLC",
        "Product Design",
        "417., Saint Martin",
        "Full Time",
        [
          'Creative with an eye for shape and color',
          'Understand different Materials and Production \n Method',
          'Creative with an eye for shape and color',
          'Understand different Materials and Production \n Method',
        ],
      ),
      CompanyInfo(
        "assets/icons/google.png",
        "Google LLC",
        "Product Design",
        "417., Saint Martin",
        "Full Time",
        [
          'Creative with an eye for shape and color',
          'Understand different Materials and Production \n Method',
          'Creative with an eye for shape and color',
          'Understand different Materials and Production \n Method',
        ],
      ),
      CompanyInfo(
        "assets/icons/google.png",
        "Google LLC",
        "Product Design",
        "417., Saint Martin",
        "Full Time",
        [
          'Creative with an eye for shape and color',
          'Understand different Materials and Production \n Method',
          'Creative with an eye for shape and color',
          'Understand different Materials and Production \n Method',
        ],
      ),
    ];
  }
}
