import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/colors.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class CustomButton extends StatelessWidget {
  final String tittle;
  final Icon? icon;
  final double width;
  final double heigh;
  const CustomButton({
    super.key,
    required this.tittle,
    this.icon,
    required this.width,
    required this.heigh,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Colors.white,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 147, 154, 151),
            offset: Offset(0, 5),
            blurRadius: 9,
          ),
        ],
        color: MyColors.button,
        borderRadius: BorderRadius.circular(
          10,
        ),
      ),
      width: width,
      height: heigh,
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              tittle,
              style: Styles.textstyle15White,
            ),
            const SizedBox(
              width: 10,
            ),
            if (icon != null)
              SizedBox(
                height: 18,
                width: 14,
                child: IconButton(
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  icon: Icon(
                    icon!.icon,
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
