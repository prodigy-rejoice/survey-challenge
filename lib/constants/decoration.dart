import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter your email or username',
  labelText: 'Username',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(
        15,
      ),
    ),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(
      color: Colors.blue,
      width: 2.0,
    ),
    borderRadius: BorderRadius.all(
      Radius.circular(20.0),
    ),
  ),
);

final titleStyle = GoogleFonts.poppins(
  fontSize: 16,
  color: Colors.black,
  fontWeight: FontWeight.w500,
);

const kOptionStyle = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);

const kDialogueEnter = TextStyle(
  color: Colors.white,
  fontSize: 20,
  fontWeight: FontWeight.w700,
);
const kNumberCount = TextStyle(
  fontSize: 25.0,
  fontWeight: FontWeight.bold,
);

const kQuestionType = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.bold,
);

const kQuestionName = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w400,
);

const kButtonText = TextStyle(
  fontWeight: FontWeight.w500,
  color: Colors.white,
  fontSize: 18.0,
);

const kInstructionStyle = TextStyle(
  fontSize: 28.0,
  fontWeight: FontWeight.w500,
  color: Colors.blueAccent,
);

const kReviewPageText = TextStyle(
  fontSize: 18.0,
  fontWeight: FontWeight.w400,
);
const kBottomButton = TextStyle(
  fontSize: 25,
  color: Colors.white,
  fontWeight: FontWeight.bold,
); //TextStyle