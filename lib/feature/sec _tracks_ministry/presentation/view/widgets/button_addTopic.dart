import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class AddTopic extends StatelessWidget {
  const AddTopic({
    super.key,
    required this.width,
    required this.heigh,
    this.padding,
    required this.icon,
    required this.text,
    this.onTap,
  });

  final double width;
  final double heigh;
  final Icon icon;
  final void Function()? onTap;
  final String text;

  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: padding,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: const [
            BoxShadow(
              color: Color(0xff929493),
              offset: Offset(0, 4),
              blurRadius: 4,
              spreadRadius: 0,
            ),
          ],
        ),
        width: width,
        height: heigh,
        child: Row(
          children: [
            const SizedBox(
              width: 10,
            ),
            icon,
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: Styles.textstyle13Black,
            )
          ],
        ),
      ),
    );
  }
}
