import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/containerBackground.dart';

class ItemOfTrack extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  const ItemOfTrack({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(clipBehavior: Clip.none, children: [
        ContainerbackGroundforAll(
          width: 400,
          heigh: 90,
          child: Center(
            child: Text(
              text,
              style: Styles.textstyle20Black,
            ),
          ),
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
