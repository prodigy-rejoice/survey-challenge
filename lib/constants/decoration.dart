import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const kTextFieldStyle = InputDecoration(
  filled: true,
  fillColor: Colors.white,
  hintText: 'Enter your email',
  hintStyle: TextStyle(
    color: Colors.grey,
  ),

  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(20),
    ),

    borderSide: BorderSide(color: Colors.red),
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
