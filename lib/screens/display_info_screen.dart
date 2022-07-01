import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:survey_challenge/constants/decoration.dart';
import 'package:survey_challenge/questions/info_questions.dart';

class ShowQuestions extends StatefulWidget {
  const ShowQuestions({Key? key}) : super(key: key);

  @override
  State<ShowQuestions> createState() => _ShowQuestionsState();
}

class _ShowQuestionsState extends State<ShowQuestions> {
  var groupValue;
  InformationQuestion informationQuestions = InformationQuestion();
  void readyScreen() {
    setState(() {
      if (informationQuestions.isFinished() == true) {
        Alert(
          context: context,
          type: AlertType.success,
          title: "Thank You!",
          content: Column(
            children: const [
              Text(
                "Your details are safe with us.",
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              Text(
                "Kindly proceed to the survey!",
                style: TextStyle(
                  fontSize: 13.0,
                ),
              ),
            ],
          ),
          buttons: [
            DialogButton(
              onPressed: () => Navigator.popAndPushNamed(
                context,
                '/welcome',
              ),
              width: 120,
              child: const Text(
                "CONTINUE",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontWeight: FontWeight.w900),
              ),
            )
          ],
        ).show();
      }
      informationQuestions.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Question ${informationQuestions.getCount()} / 10", style: kNumberCount,
        ),
      ),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.all(10.0),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'User\'s Information Page',
                style: kQuestionType,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(
              informationQuestions.getQuestionText()!,
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
                    title: Text(
                      informationQuestions.getOptions()[0],
                    ),
                    value: informationQuestions.getOptions()[0],
                    groupValue: groupValue,
                    onChanged: (newValue) {
                      setState(() {
                        groupValue = newValue;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      informationQuestions.getOptions()[1],
                    ),
                    value: informationQuestions.getOptions()[1],
                    groupValue: groupValue,
                    onChanged: (newValue) {
                      setState(() {
                        groupValue = newValue;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      informationQuestions.getOptions()[2],
                    ),
                    value: informationQuestions.getOptions()[2],
                    groupValue: groupValue,
                    onChanged: (newValue) {
                      setState(() {
                        groupValue = newValue;
                      });
                    },
                  ),
                  RadioListTile(
                    title: Text(
                      informationQuestions.getOptions()[3],
                    ),
                    value: informationQuestions.getOptions()[3],
                    groupValue: groupValue,
                    onChanged: (newValue) {
                      setState(() {
                        groupValue = newValue;
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
                        color: informationQuestions.questionNumber == 0
                            ? Colors.grey
                            : Colors.redAccent,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(5.0),
                        ),
                      ),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            informationQuestions.backQuestion();
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
                          print(groupValue);
                          readyScreen();
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
    );
  }
}
