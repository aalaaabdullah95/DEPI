import 'package:flutter/material.dart';
import 'package:test_project_depi/core/widget/custom_bottomNavBar.dart';
import 'package:test_project_depi/core/widget/custom_button.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/core/widget/backGroundNavigationBar.dart';
import 'package:test_project_depi/feature/sec_three_student/presentation/view/widgets/body.dart';
import 'package:test_project_depi/feature/sec_three_student/presentation/view/widgets/CustomDropdownField.dart';

class ComplaintsAndSuggestions1 extends StatelessWidget {
  const ComplaintsAndSuggestions1({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GradientBackground(
          child: const Padding(
            padding: EdgeInsets.only(
              left: 40,
              right: 40,
              top: 10,
            ),
            child: Column(
              children: [
                CustomButtonForALl(
                  heigh: 55,
                  width: 340,
                  tittle: 'Complaints & Suggestions',
                  prefixxicon: Icon(Icons.arrow_back),
                ),
                SizedBox(
                  height: 15,
                ),
                CustomDropdownField(),
                SizedBox(
                  height: 15,
                ),
                Expanded(
                  child: Body(),
                ),
                SizedBox(
                  height: 20,
                ),
                CustomButtonForALl(
                  heigh: 45,
                  width: 300,
                  tittle: ' Submit ',
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: const backGroundNavigationBar(
          child: CustomBottomNavBar(),
        ),
      ),
    );
  }
}
