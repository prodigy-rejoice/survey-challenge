// ignore_for_file: avoid_print

import '../models/survey.dart';

class SurveyQuestion {
  int _surveyNumber = 0;

  List<String> groupValues = List.generate(20, (index) => '');

  int get surveyNumber => _surveyNumber;

  final List<Survey> _surveyKeeper = [
    Survey(
      surveyText: "Have you ever heard of cervical cancer?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: '"Have you ever heard of human papilloma virus (HPV)",',
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      options: [
        "Yes",
        "No",
        "Maybe",
      ],
      surveyText: '"Is cervical cancer preventable?",',
    ),
    Survey(
      surveyText: "Is having many different sexual partners a risk factor?",
      options: [
        "Yes",
        "No",
        "Maybe",
      ],
    ),
    Survey(
      surveyText: "Is smoking a risk factor for cervical cancer?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: "Is HIV a risk factor for cervical cancer?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: "Is oral contraception a risk factor for cervical cancer?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: "Is giving birth to many babies a risk factor?",
      options: [
        'Yes',
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText:
          "Are you more likely to develop cervical cancer if a family member has/had it?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: "Do you know the symptoms of cervical cancer?",
      options: [
        "Yes",
        "No",
        "Not Sure",
      ],
    ),
    Survey(
      surveyText: "If yes, Is vaginal bleeding a symptom of cervical cancer",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: "If yes, Is foul smelling a symptom of cervical cancer",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText:
          "If yes, Is experiencing pain during intercourse a symptom of cervical cancer",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText:
          "Are you aware of any knowledge of screening for cervical cancer?",
      options: [
        "Yes",
        "No",
        "Probably",
      ],
    ),
    Survey(
      surveyText: "If yes, is Pap Smear a method?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: "If yes, is visual inspection of cervix a method?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: "If yes, is	human papillomavirus DNA testing a method?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: "If yes, is liquid-based cytology a method?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText: "Do you think most cervical cancer cases are spiritual?",
      options: [
        "Yes",
        "No",
        "I don't know",
      ],
    ),
    Survey(
      surveyText:
          "Do you think it is possible for any woman (including you) to develop cervical cancer in your lifetime?",
      options: [
        "Of course",
        "Of course not",
        "It is all about destiny",
      ],
    ),
  ];
  String getCount() {
    return "${_surveyNumber + 1}";
  }

  int getIndex() {
    return _surveyNumber;
  }

  String? getSurveyText() {
    return _surveyKeeper[_surveyNumber].surveyText;
  }

  List<String> getOptions() {
    return _surveyKeeper[_surveyNumber].options;
  }

  void backQuestion() {
    if (_surveyNumber != 0) {
      _surveyNumber--;
    }
  }

  void nextQuestion() {
    if (_surveyNumber < _surveyKeeper.length - 1) {
      _surveyNumber++;
    }
  }

  bool isFinished() {
    if (_surveyNumber == _surveyKeeper.length - 1) {
      print(groupValues);
      print('end of question');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _surveyNumber = 0;
  }
}
