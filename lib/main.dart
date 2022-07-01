import 'package:flutter/material.dart';
import 'package:survey_challenge/screens/display_info_screen.dart';
import 'package:survey_challenge/screens/display_survey.dart';
import 'package:survey_challenge/screens/instruction_screen.dart';
import 'package:survey_challenge/screens/review_screen.dart';
import 'package:survey_challenge/screens/register_screen.dart';
import 'package:survey_challenge/screens/splash_screen.dart';
import 'package:survey_challenge/screens/welcome.dart';

void main() => runApp(
      const MyApp(),
    );

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) {
          return const SplashScreen();
        },
        '/register': (context) {
          return const Register();
        },
        '/welcome': (context) {
          return const Welcome();
        },
        '/questions': (context) {
          return const ShowQuestions();
        },
        '/survey': (context) {
          return const ShowSurvey();
        },
        '/ready': (context) {
          return const Ready();
        },
        // '/result': (context) {
        //   return const ResultPage();
        // }
      },
    );
  }
}
