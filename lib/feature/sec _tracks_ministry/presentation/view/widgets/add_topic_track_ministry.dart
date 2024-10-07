import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/containerBackground.dart';
import 'package:test_project_depi/core/widget/custom_button_for_all.dart';
import 'package:test_project_depi/core/widget/custom_drop_downfeild_forall.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/core/widget/text_feild_with_shadow.dart';

class AddTopicTrackMinistry extends StatelessWidget {
  const AddTopicTrackMinistry({super.key});

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
                tittle: 'New Mobile Application Topic',
                width: 400,
                heigh: 60,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  ContainerbackGroundforAll(
                    width: 400,
                    heigh: 320,
                    child: Padding(
                      padding: const EdgeInsets.only(
                        left: 10,
                        right: 10,
                        top: 15,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Topic name',
                            style: Styles.textstyle20Black,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          const TextFeildWithShadow(),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Hours Count',
                            style: Styles.textstyle20Black,
                          ),
                          const TextFeildWithShadow(),
                          const SizedBox(
                            height: 5,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          const Text(
                            'Due Date',
                            style: Styles.textstyle20Black,
                          ),
                          TextFeildWithShadow(
                            suffixIcon: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.calendar_month_outlined,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 150,
                  ),
                  const CustomButtonForALl(
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
