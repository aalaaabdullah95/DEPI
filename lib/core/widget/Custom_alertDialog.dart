import 'package:flutter/material.dart';
import 'dart:ui';

class CustomAlertdialog extends StatelessWidget {
  final Color? color;
  final Widget content;
  const CustomAlertdialog({
    super.key,
    required this.content,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(
        sigmaX: 1.5,
        sigmaY: 1.5,
      ),
      child: AlertDialog(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Colors.black,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        content: content,
      ),
    );
  }
}
