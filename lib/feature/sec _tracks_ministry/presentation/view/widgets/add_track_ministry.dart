import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/containerBackground.dart';
import 'package:test_project_depi/core/widget/custom_button_for_all.dart';
import 'package:test_project_depi/core/widget/custom_drop_downfeild_forall.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/core/widget/text_feild_with_shadow.dart';

class AddTrackMinistry extends StatelessWidget {
  const AddTrackMinistry({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GradientBackground(
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 30),
          child: Column(
            children: [
              CustomButtonForALl(
                prefixxicon: const Icon(
                  Icons.arrow_back,
                ),
                onPressedForprefix: () {
                  GoRouter.of(context).pop();
                },
                tittle: 'New Tracks',
                width: 400,
                heigh: 60,
              ),
              const Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  ContainerbackGroundforAll(
                    width: 400,
                    heigh: 250,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Track Name',
                            style: Styles.textstyle20Black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextFeildWithShadow(),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            'Track Category',
                            style: Styles.textstyle20Black,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Column(
                            children: [
                              CustomDropDownForALl(items: [
                                DropdownMenuEntry(
                                    value: '1', label: 'Software Development'),
                                DropdownMenuEntry(
                                    value: '2',
                                    label: 'Data Science & Machine Learning'),
                              ]),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 180,
                  ),
                  CustomButtonForALl(
                    tittle: 'Save',
                    width: 300,
                    heigh: 45,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
