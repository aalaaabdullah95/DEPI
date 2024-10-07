import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/colors.dart';

class TextFeildWithShadow extends StatelessWidget {
  final Widget? suffixIcon;
  const TextFeildWithShadow({
    super.key,
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 4),
            ),
          ]),
      child: TextField(
        cursorColor: MyColors.textColor,
        decoration: InputDecoration(
          suffixIcon: suffixIcon,
          suffixIconColor: MyColors.button,
          // contentPadding: EdgeInsets.symmetric(
          //   horizontal: 10,
          //   vertical: 15,
          // ),
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
