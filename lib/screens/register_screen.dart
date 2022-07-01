import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import '../constants/decoration.dart';

class Register extends StatelessWidget {
  const Register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: SafeArea(
        child: Center(
          child: PhysicalModel(
            borderRadius: BorderRadius.circular(50),
            shadowColor: Colors.white10,
            elevation: 5,
            color: const Color(0x0fffffff),
            child: Container(
              color: Colors.transparent,
              height: 400,
              width: 400,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 12.0),
                      child: Text(
                        'It\'s your first time!',
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8.0),
                      child: Text(
                        'Please fill in your details and register',
                        style: titleStyle.copyWith(
                            fontSize: 13, color: Colors.black54),
                      ),
                    ),
                    const Expanded(
                      child: TextField(
                        decoration: kTextFieldStyle,
                        cursorColor: Colors.blueAccent,
                      ),
                    ),
                    Expanded(
                      child: TextField(
                        decoration: kTextFieldStyle.copyWith(
                            hintText: 'Enter your name'),
                        cursorColor: Colors.blueAccent,
                      ),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Alert(
                          context: context,
                          type: AlertType.info,
                          title: "INFORMATION",
                          content: Column(
                            children: const [
                              Center(
                                child: Text(
                                  "Share some info about yourself!",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 10.0),
                                child: Text(
                                  "Your details are safe😊",
                                  style: TextStyle(fontSize: 13.0),
                                ),
                              ),
                            ],
                          ),
                          buttons: [
                            DialogButton(
                              onPressed: () => Navigator.popAndPushNamed(
                                context,
                                '/questions',
                              ),
                              width: 120,
                              child: const Text(
                                "OKAY",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700),
                              ),
                            )
                          ],
                        ).show();
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 30,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'Register',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Alert(
                            context: context,
                            title: "LOGIN",
                            content: Column(
                              children: const <Widget>[
                                TextField(
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.account_circle),
                                    labelText: 'Username',
                                  ),
                                ),
                                TextField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    icon: Icon(Icons.lock),
                                    labelText: 'Password',
                                  ),
                                ),
                              ],
                            ),
                            buttons: [
                              DialogButton(
                                onPressed: () => Alert(
                                  context: context,
                                  type: AlertType.success,
                                  title: "Successful!",
                                  content: Column(
                                    children: const [
                                      Text(
                                        "Welcome back",
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
                                      onPressed: () =>
                                          Navigator.popAndPushNamed(
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
                                ).show(),
                                child: const Text(
                                  "LOGIN",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              )
                            ]).show();
                      },
                      child: const SizedBox(
                        width: 80,
                        height: 30,
                        child: Center(
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xffffffff),
                                fontSize: 19.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
