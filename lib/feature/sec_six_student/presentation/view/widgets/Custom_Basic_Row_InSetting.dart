import 'package:flutter/widgets.dart';
import 'package:test_project_depi/core/utilies/colors.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class CustomBasicRowInSetting extends StatelessWidget {
  const CustomBasicRowInSetting({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 40,
          color: MyColors.button,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          text,
          style: Styles.textstyle30Black,
        ),
      ],
    );
  }
}
