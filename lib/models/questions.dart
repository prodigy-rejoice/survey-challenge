class Question {
  String? questionText;
  late List<String> options;

  Question({
    required this.questionText,
    required this.options,
  });
}

class Options {
  String? optionA;
  String? optionB;
  String? optionC;
  String? optionD;

  Options(
    this.optionA,
    this.optionB,
    this.optionC,
    this.optionD,
  );
}
