import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/assets.dart';
import 'package:test_project_depi/core/utilies/colors.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/custom_button_for_all.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';

class AccountSettingStudentScreen extends StatelessWidget {
  const AccountSettingStudentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: GradientBackground(
          child: Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomButtonForALl(
                  prefixxicon: const Icon(Icons.arrow_back),
                  suffixicon: const Icon(Icons.notifications_active_outlined),
                  onPressedForSuffix: () {},
                  onPressedForprefix: () {
                    GoRouter.of(context).pop();
                  },
                  tittle: 'Edit Profile',
                  width: 380,
                  heigh: 60,
                ),
                const SizedBox(
                  height: 45,
                ),
                const CircleAvatar(
                  maxRadius: 60,
                  backgroundImage: AssetImage(
                    Assets.exampleImage,
                  ),
                ),
                const Text(
                  'Student ID :21035562',
                  style: Styles.textstyle20Black,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Basic Information',
                      style: Styles.textstyle20BlackM),
                ),
                const SizedBox(
                  height: 19,
                ),
                Expanded(
                    child: ListView(
                  children: const [
                    CustomHeaderWithTextFeild(
                      header: 'Full Name',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Full Name(Arabic)',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Gender',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Birth Date',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'National ID',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Government',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Email',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Phone',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Linkedin',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'University',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'College ',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Specialization ',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Appreciation ',
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    CustomHeaderWithTextFeild(
                      header: 'Training Governorate  ',
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomHeaderWithTextFeild extends StatelessWidget {
  final String header;
  const CustomHeaderWithTextFeild({
    super.key,
    required this.header,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            header,
            style: Styles.textstyle20BlackM,
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            decoration: BoxDecoration(
                color: Color(0xffE2F5EF),
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: Offset(0, 4),
                  ),
                ]),
            child: const TextField(
              cursorColor: MyColors.textColor,
              decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  border: InputBorder.none),
            ),
          )
        ],
      ),
    );
  }
}
