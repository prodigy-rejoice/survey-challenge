class Survey {
  String? surveyText;
  late List<String> options;

  Survey({required this.surveyText, required this.options});
}

class Options {
  final String? optionA;
  final String? optionB;
  final String? optionC;
  final String? optionD;

  Options(
      {required this.optionA,
      required this.optionB,
      required this.optionC,
      required this.optionD});
}
