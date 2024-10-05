import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class Contentofalertdialogabout extends StatelessWidget {
  const Contentofalertdialogabout({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 340,
      height: 500,
      child: Padding(
        padding: EdgeInsets.only(
          top: 86,
          bottom: 10,
          left: 10,
          right: 10,
        ),
        child: Text(
          '''The Digital Egypt Pioneers initiative is a key component of Egypt's digital transformation strategy and investing in students' digital skills by offering specialized training programs and workshops in various technological fields so that Egypt can build a more prosperous future.''',
          style: Styles.textstyle20Black,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
