import 'package:flutter/material.dart';
import 'package:test_project_depi/core/utilies/colors.dart';
import 'package:test_project_depi/core/utilies/styles.dart';

class CustomButtonForALl extends StatelessWidget {
  final String tittle;
  final Icon? suffixicon;
  final Icon? prefixxicon;
  final double width;
  final double heigh;
  final void Function()? onPressedForSuffix;
  final void Function()? onPressedForprefix;
  const CustomButtonForALl({
    super.key,
    required this.tittle,
    this.suffixicon,
    required this.width,
    required this.heigh,
    this.prefixxicon,
    this.onPressedForSuffix,
    this.onPressedForprefix,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 0.5,
          color: Colors.transparent,
        ),
        boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 147, 154, 151),
            offset: Offset(0, 4),
            blurRadius: 4,
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
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          children: [
            if (prefixxicon != null)
              SizedBox(
                height: 30,
                width: 30,
                child: IconButton(
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: onPressedForprefix,
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 19),
                    child: Icon(
                      prefixxicon!.icon,
                    ),
                  ),
                ),
              ),
            const Spacer(),
            Text(
              tittle,
              style: Styles.textstyle20White,
            ),
            const Spacer(),
            if (suffixicon != null)
              SizedBox(
                height: 32,
                width: 32,
                child: IconButton(
                  color: Colors.white,
                  padding: EdgeInsets.zero,
                  onPressed: onPressedForSuffix,
                  icon: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Icon(
                      suffixicon!.icon,
                    ),
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
