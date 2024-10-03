import 'package:flutter/material.dart';

class ContainerbackGroundforAll extends StatelessWidget {
  const ContainerbackGroundforAll({
    super.key,
    required this.child,
    required this.width,
    required this.heigh,
    this.padding,
  });
  final Widget child;
  final double width;
  final double heigh;
  final EdgeInsetsGeometry? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
        color: const Color(0xffE9E9E9),
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
      child: child,
    );
  }
}
