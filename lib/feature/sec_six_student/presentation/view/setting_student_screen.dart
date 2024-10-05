import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/app_router.dart';
import 'package:test_project_depi/core/utilies/colors.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/backGroundNavigationBar.dart';
import 'package:test_project_depi/core/widget/custom_bottomNavBar.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/widgets/Custom_Basic_Row_InSetting.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/widgets/Custom_Row_Down_Basic_Row_InSetting.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/widgets/Custom_alertDialog.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/widgets/contentOfAlertDialogAbout.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/widgets/contentOfAlertDialogLan.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/widgets/custom_bottom_for_settingStudent.dart';

class SettingStudentScreen extends StatefulWidget {
  const SettingStudentScreen({super.key});

  @override
  State<SettingStudentScreen> createState() => _SettingStudentScreenState();
}

class _SettingStudentScreenState extends State<SettingStudentScreen> {
  bool isSwitched = false;
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
                child: ListView(
                  children: [
                    CustomBottomForSettingstudent(
                      tittle: 'Setting',
                      width: 390,
                      heigh: 60,
                      suffixicon: const Icon(
                        Icons.notifications_active,
                      ),
                      onPressedForSuffix: () {},
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Part_of_account(),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      children: [
                        const CustomBasicRowInSetting(
                          text: 'Notification',
                          icon: Icons.notifications_none_sharp,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        const Divider(),
                        CustomRowDownBasicRowInSetting(
                          text: 'App notification',
                          widget: Transform.scale(
                            scale: 0.5,
                            child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                              activeColor: MyColors.textColor,
                              autofocus: true,
                              inactiveTrackColor: Colors.grey,
                              inactiveThumbColor: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Part_of_more(),
                    const SizedBox(
                      height: 10,
                    ),
                    const Logout()
                  ],
                ),
              ),
            ),
            bottomNavigationBar: const backGroundNavigationBar(
              child: CustomBottomNavBar(),
            )));
  }
}

class Part_of_account extends StatelessWidget {
  const Part_of_account({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBasicRowInSetting(
          text: 'Account',
          icon: Icons.account_circle_outlined,
        ),
        const SizedBox(
          height: 6,
        ),
        const Divider(),
        CustomRowDownBasicRowInSetting(
          text: 'Edit Profile',
          widget: IconButton(
            onPressed: () {
              GoRouter.of(context).push(
                AppRouter.accountSettingStudentScreen,
              );
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class Part_of_more extends StatelessWidget {
  const Part_of_more({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomBasicRowInSetting(
          text: 'More',
          icon: Icons.add_circle_outline_outlined,
        ),
        const SizedBox(
          height: 6,
        ),
        const Divider(),
        CustomRowDownBasicRowInSetting(
          text: 'Languege',
          widget: IconButton(
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const CustomAlertdialog(
                    content: Contentofalertdialoglan(),
                  );
                },
              );
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        CustomRowDownBasicRowInSetting(
          text: 'Dark Mode',
          widget: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.dark_mode_outlined,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
        CustomRowDownBasicRowInSetting(
          text: 'About',
          widget: IconButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return const CustomAlertdialog(
                        content: Contentofalertdialogabout());
                  });
            },
            icon: const Icon(
              Icons.arrow_forward_ios,
              size: 20,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

class Logout extends StatelessWidget {
  final void Function()? onTap;
  const Logout({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          decoration: BoxDecoration(
            color: MyColors.button,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.logout,
                color: Colors.white,
                size: 32,
              ),
              SizedBox(width: 8),
              Text(
                'Logout',
                style: Styles.textstyle30White,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
