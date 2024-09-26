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

//button label text
  static const textstyle12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: MyColors.textColor,
  );
}
