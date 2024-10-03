import 'package:flutter/material.dart';

class BlueCircuit extends StatelessWidget {
  const BlueCircuit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.topRight,
      child: Icon(
        Icons.circle,
        color: Color(0xff00BCD4),
      ),
    );
  }
}
