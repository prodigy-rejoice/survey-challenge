import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../constants/decoration.dart';

class Welcome extends StatefulWidget {
  const Welcome({Key? key}) : super(key: key);

  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset('images/illustration.png'),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10.0),
            child: Text(
              'Are you ready for this survey?',
              style: titleStyle.copyWith(fontSize: 18, color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: Center(
              child: Container(
                width: 100.0,
                height: 40.0,
                decoration: const BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                  boxShadow: [
                    BoxShadow(color: Colors.grey),
                  ],
                ),
                child: InkWell(
                  onTap: () {
                    Alert(
                            context: context,
                            title: "We are sorry to see you go",
                            desc: "Kindly exit the app!")
                        .show();
                  },
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        'No',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 70.0, top: 10.0),
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
                    Navigator.pushNamed(context, '/ready');
                  },
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(4.0),
                      child: Text(
                        'Yes',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
