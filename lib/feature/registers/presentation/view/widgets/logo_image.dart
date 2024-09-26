import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/assets.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Image.asset(
        Assets.logo,
        width: 181,
        height: 167,
      ),
    );
  }
}
