import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/app_router.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/custom_button_for_all.dart';
import 'package:test_project_depi/core/widget/custom_item_withCloseIcon.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/sec%20_tracks_ministry/presentation/view/widgets/CustomTopicCard.dart';
import 'package:test_project_depi/feature/sec%20_tracks_ministry/presentation/view/widgets/button_addTopic.dart';

class Subtopictracksministry extends StatelessWidget {
  const Subtopictracksministry({super.key});

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
                onPressedForSuffix: () {
                  GoRouter.of(context).push(
                    AppRouter.addSubTopicTrackMinistry,
                  );
                },
                suffixicon: const Icon(
                  Icons.add_circle_outline_rounded,
                ),
                tittle: 'Java',
                width: 400,
                heigh: 60,
              ),
              const SizedBox(
                height: 40,
              ),
              CustomItemWithcloseicon(
                widget: Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 10,
                    right: 10,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Basics',
                            style: Styles.textstyle20BlackM.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const Spacer(),
                          const AddTopic(
                            width: 150,
                            heigh: 35,
                            icon: Icon(Icons.add),
                            text: 'Add Topic',
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              //IconTopic
                              CustomTopicCard(
                                tittle: 'Data Type',
                                date: '6/10/2024',
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              CustomTopicCard(
                                tittle: 'Variables',
                                date: '8/10/2024',
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              CustomTopicCard(
                                tittle: 'Loops',
                                date: '8/10/2024',
                              ),

                              SizedBox(
                                height: 25,
                              ),
                              CustomTopicCard(
                                tittle: 'Functions',
                                date: '8/10/2024',
                              ),
                              SizedBox(
                                height: 25,
                              ),
                              CustomTopicCard(
                                tittle: 'Conditions',
                                date: '8/10/2024',
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                width: 400,
                heigh: 500,
              )
            ],
          ),
        ),
      ),
    );
  }
}
