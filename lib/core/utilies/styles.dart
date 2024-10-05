import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/colors.dart';

abstract class Styles {
  static const textstyle20 = TextStyle(
    fontSize: 20,
    color: MyColors.textColor,
    fontWeight: FontWeight.bold,
  );

  static const textstyle20White = TextStyle(
    fontSize: 20,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  static const textstyle15White = TextStyle(
    fontSize: 15,
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );
  static const textstyle30White = TextStyle(
    fontSize: 30,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  );

  //button label text
  static const textstyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: MyColors.textColor,
  );
  static const textstyle20Black = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w400,
  );
  static const textstyle20BlackM = TextStyle(
    fontSize: 20,
    color: Colors.black,
    fontWeight: FontWeight.w500,
  );
  static const textstyle30Black = TextStyle(
    fontSize: 30,
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );
  static const textstyle10Black = TextStyle(
    fontSize: 10,
    color: Colors.black,
  );

  static const textstyle16 = TextStyle(
    fontSize: 16,
    color: Colors.black,
  );
  static const textstyle11 = TextStyle(
    fontWeight: FontWeight.w300,
    fontSize: 11,
    color: Color(0xff555555),
  );

  static const textstyle16Black = TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Colors.black,
  );
}
