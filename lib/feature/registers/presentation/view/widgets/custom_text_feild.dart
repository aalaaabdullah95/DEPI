import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/colors.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class CustomTextFeild extends StatelessWidget {
  final String labelText;
  final Icon? prefixIcon;
  final Icon? suffexIcon;
  const CustomTextFeild({
    super.key,
    required this.labelText,
    this.prefixIcon,
    this.suffexIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
          color: Color(0xffBAC1BE),
          offset: Offset(0, 5),
          blurRadius: 10,
        ),
      ]),
      child: TextField(
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: prefixIcon,
          prefixIconColor: MyColors.textColor,
          suffixIconColor: MyColors.textColor,
          suffixIcon: suffexIcon,
          labelStyle: Styles.textstyle12,
          filled: true,
          fillColor: MyColors.textFeild,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.textFeild,
            ),
          ),
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: MyColors.textFeild,
            ),
          ),
        ),
      ),
    );
  }
}
