import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class Contentofalertdialoglan extends StatelessWidget {
  const Contentofalertdialoglan({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 130,
      width: 340,
      child: Column(
        children: [
          CustomRow(
            text: 'Arabic',
          ),
          SizedBox(
            height: 20,
          ),
          Divider(
            indent: 30,
            endIndent: 30,
            color: Color(0xff555555),
          ),
          SizedBox(
            height: 20,
          ),
          CustomRow(
            text: 'English',
          ),
        ],
      ),
    );
  }
}

class CustomRow extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const CustomRow({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          const SizedBox(
            width: 30,
          ),
          const Icon(
            Icons.language,
            color: Colors.black,
          ),
          const SizedBox(
            width: 54,
          ),
          Text(
            text,
            style: Styles.textstyle20Black.copyWith(
              fontSize: 24,
            ),
          ),
        ],
      ),
    );
  }
}
