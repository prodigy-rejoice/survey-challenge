import 'package:flutter/material.dart';
import 'package:survey_challenge/constants/decoration.dart';

class Ready extends StatelessWidget {
  const Ready({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              flex: 4,
              child: Padding(
                padding: EdgeInsets.all(10.0),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 20.0, left: 15.0, right: 15.0),
              child: Center(
                child: Text(
                  'Please answer each question sincerely!',
                  style: kInstructionStyle,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 70.0, left: 15.0, right: 15.0),
              child: Text(
                'This survey contain questions about your health and pertains to females only...',
                style: TextStyle(fontSize: 17.0),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/survey');
              },
              child: Container(
                margin: const EdgeInsets.all(20.0),
                height: 40.0,
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(50.0),
                ),
                child: const Center(
                  child: Text(
                    'Start Survey',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
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
