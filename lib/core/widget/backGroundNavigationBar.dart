import 'package:flutter/material.dart';

class backGroundNavigationBar extends StatelessWidget {
  const backGroundNavigationBar({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC3EADF),
      child: child,
    );
  }
}
