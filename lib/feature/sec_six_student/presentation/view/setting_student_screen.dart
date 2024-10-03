import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:test_project_depi/core/utilies/colors.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/widgets/custom_bottom_for_settingStudent.dart';

class SettingStudentScreen extends StatelessWidget {
  const SettingStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GradientBackground(
          child: Padding(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 30,
            ),
            child: Column(
              children: [
                CustomBottomForSettingstudent(
                  tittle: 'Setting',
                  width: 390,
                  heigh: 60,
                  suffixicon: const Icon(
                    FontAwesomeIcons.bell,
                  ),
                  onPressedForSuffix: () {},
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.person_outline_outlined,
                      size: 40,
                      color: MyColors.button,
                    ),
                    Text(
                      'Account',
                      style: Styles.textstyle20Black
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
