import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class CustomRowDownBasicRowInSetting extends StatelessWidget {
  const CustomRowDownBasicRowInSetting({
    super.key,
    required this.text,
    required this.widget,
  });
  final String text;

  final Widget widget;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 57,
        ),
        Text(
          text,
          style: Styles.textstyle16Black.copyWith(fontWeight: FontWeight.w400),
        ),
        const Spacer(),
        GestureDetector(
          child: widget,
        )
      ],
    );
  }
}
