import 'package:flutter/material.dart';
import 'package:test_project_depi/core/widget/containerBackground.dart';

class CustomItemWithcloseicon extends StatelessWidget {
  final Widget widget;
  final void Function()? onTap;
  final double width;
  final double heigh;

  const CustomItemWithcloseicon({
    super.key,
    required this.widget,
    this.onTap,
    required this.width,
    required this.heigh,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(clipBehavior: Clip.none, children: [
        ContainerbackGroundforAll(
          width: width,
          heigh: heigh,
          child: Center(child: widget),
        ),
        Positioned(
          top: -23,
          right: -18,
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.cancel_outlined,
            ),
          ),
        ),
      ]),
    );
  }
}
