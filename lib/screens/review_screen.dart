import 'package:flutter/material.dart';
import 'package:survey_challenge/constants/decoration.dart';
import 'package:survey_challenge/questions/survey_questions.dart';

class ResultPage extends StatefulWidget {
  final List<String> answers;
  const ResultPage({required this.answers, Key? key}) : super(key: key);

  @override
  State<ResultPage> createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  SurveyQuestion surveyQuestion = SurveyQuestion();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "REVIEW SURVEY",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListView(
              shrinkWrap: true,
              children: List.generate(
                widget.answers.length,
                (index) => Row(
                  children: [
                    Text(
                      '${index + 1}: ',
                      style: titleStyle.copyWith(fontSize: 18),
                    ),
                    Text(
                      widget.answers[index].isEmpty
                          ? 'Not answered'
                          : widget.answers[index],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
