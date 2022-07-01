// ignore_for_file: avoid_print

import '../models/questions.dart';

class InformationQuestion {
  int _questionNumber = 0;
  int get questionNumber => _questionNumber;
  final List<Question> _questionsKeeper = [
    Question(
      questionText: 'Employment Status of respondent:',
      options: [
        "Self-employed",
        "Employed",
        "Unemployed",
        "Student",
      ],
    ),
    Question(
      questionText: "How old are you now? ",
      options: [
        "0-20",
        "21-40",
        "41-60",
        "61 and above",
      ],
    ),
    Question(
      questionText: "What is your current weight? ",
      options: [
        "21-40",
        "41-60",
        "61 and above",
        "No idea",
      ],
    ),
    Question(
      questionText: "What is your current height? ",
      options: [
        "21-40",
        "41-60",
        "61 and above",
        "No idea",
      ],
    ),
    Question(
      questionText: "What is you marital status? ",
      options: [
        "Single",
        "Married",
        "Divorced",
        "Widowed",
      ],
    ),
    Question(
      questionText: "Highest level of education attained?",
      options: [
        "No Formal education",
        "Primary",
        "Secondary",
        "Tertiary",
      ],
    ),
    Question(
      questionText: "What is your ethnic group?",
      options: [
        "Yoruba",
        "Igbo",
        "Hausa",
        "Others",
      ],
    ),
    Question(
      questionText: "How much do you earn weekly",
      options: [
        "0 – 1000",
        "1000 – 5000",
        "5000 – 10000",
        "10000 and above",
      ],
    ),
    Question(
      questionText: "What is your religion",
      options: [
        "Christian",
        "Muslim",
        "Traditional",
        "No Religion",
      ],
    ),
    Question(
      questionText: "This survey entails questions on your health."
          " Are you in for it?",
      options: [
        "Yes",
        "No",
        "Maybe",
        "I don't know",
      ],
    ),
  ];

  String? getQuestionText() {
    return _questionsKeeper[_questionNumber].questionText;
  }

  List<String> getOptions() {
    return _questionsKeeper[_questionNumber].options;
  }

  void nextQuestion() {
    if (_questionNumber < _questionsKeeper.length - 1) {
      _questionNumber++;
    }
  }

  void backQuestion() {
    if (_questionNumber != 0) {
      _questionNumber--;
    }
  }

  bool isFinished() {
    if (_questionNumber == _questionsKeeper.length - 1) {
      print('end of question');
      return true;
    } else {
      return false;
    }
  }

  String getCount() {
    return "${_questionNumber + 1}";
  }
}
