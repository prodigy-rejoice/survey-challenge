import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:survey_challenge/questions/survey_questions.dart';
import 'package:survey_challenge/screens/review_screen.dart';
import '../constants/decoration.dart';

class ShowSurvey extends StatefulWidget {
  const ShowSurvey({Key? key}) : super(key: key);

  @override
  State<ShowSurvey> createState() => _ShowSurveyState();
}

class _ShowSurveyState extends State<ShowSurvey> {
  SurveyQuestion surveyQuestion = SurveyQuestion();
  void doneWithSurvey() {
    setState(() {
      if (surveyQuestion.isFinished() == true) {
        Alert(
          context: context,
          type: AlertType.success,
          title: "DONE",
          content: Column(
            children: const [
              Center(
                child: Text(
                  "Kindly review your survey!",
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  "The review screen is read-only and can not be modified",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultPage(
                      answers: surveyQuestion.groupValues,
                    ),
                  ),
                );
                surveyQuestion.reset();
              },
              width: 120,
              child: const Text(
                "RESULT",
                style: kDialogueEnter,
              ),
            )
          ],
        ).show();
      }
      surveyQuestion.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Question ${surveyQuestion.getCount()} / 20",
          style: kNumberCount,
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10.0),
              child: const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'Survey Questions Page',
                  style: kQuestionType,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                surveyQuestion.getSurveyText()!,
                style: kQuestionName,
              ),
            ),
            Expanded(
              flex: 5,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RadioListTile(
                      activeColor: Colors.pinkAccent,
                      title: Text(
                        surveyQuestion.getOptions()[0],
                        style: kOptionStyle,
                      ),
                      value: surveyQuestion.getOptions()[0],
                      groupValue:
                          surveyQuestion.groupValues[surveyQuestion.getIndex()],
                      onChanged: (String? newValue) {
                        setState(() {
                          surveyQuestion
                                  .groupValues[surveyQuestion.getIndex()] =
                              newValue!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Colors.pinkAccent,
                      title: Text(
                        surveyQuestion.getOptions()[1],
                        style: kOptionStyle,
                      ),
                      value: surveyQuestion.getOptions()[1],
                      groupValue:
                          surveyQuestion.groupValues[surveyQuestion.getIndex()],
                      onChanged: (String? newValue) {
                        setState(() {
                          surveyQuestion
                                  .groupValues[surveyQuestion.getIndex()] =
                              newValue!;
                        });
                      },
                    ),
                    RadioListTile(
                      activeColor: Colors.pinkAccent,
                      title: Text(
                        surveyQuestion.getOptions()[2],
                        style: kOptionStyle,
                      ),
                      value: surveyQuestion.getOptions()[2],
                      groupValue:
                          surveyQuestion.groupValues[surveyQuestion.getIndex()],
                      onChanged: (String? newValue) {
                        setState(() {
                          surveyQuestion
                                  .groupValues[surveyQuestion.getIndex()] =
                              newValue!;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Container(
                        width: 100.0,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color: surveyQuestion.surveyNumber == 0
                              ? Colors.grey
                              : Colors.redAccent,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: InkWell(
                          onTap: surveyQuestion.surveyNumber == 0
                              ? null
                              : () {
                                  setState(() {
                                    surveyQuestion.backQuestion();
                                  });
                                },
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text(
                                'Back',
                                style: kButtonText,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Center(
                      child: Container(
                        width: 100.0,
                        height: 40.0,
                        decoration: const BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5.0),
                          ),
                        ),
                        child: InkWell(
                          onTap: () {
                            doneWithSurvey();
                          },
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(4.0),
                              child: Text(
                                'Next',
                                style: kButtonText,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
