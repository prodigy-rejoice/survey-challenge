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
          style: kBottomButton,
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(
                top: 20.0,
                left: 20.0,
              ),
              alignment: Alignment.topLeft,
              child: const Text(
                "Your Result",
                style: TextStyle(
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: ListView(
                  physics: const ClampingScrollPhysics(),
                  // shrinkWrap: true,
                  children: List.generate(
                    widget.answers.length,
                    (index) => Container(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            '${index + 1}: ',
                            style: kReviewPageText,
                          ),
                          Text(
                            widget.answers[index].isEmpty
                                ? '"Question not attempted by user"'
                                : widget.answers[index],
                            style: kReviewPageText,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.popAndPushNamed(
                    context,
                    '/welcome',
                  );
                });
              },
              child: Container(
                margin: const EdgeInsets.only(top: 10.0),
                height: 80.0,
                width: double.infinity,
                padding: const EdgeInsets.only(bottom: 15.0),
                color: Colors.blue,
                child: const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 5.0),
                    child: Text(
                      "RE-TAKE SURVEY",
                      style: kBottomButton,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
