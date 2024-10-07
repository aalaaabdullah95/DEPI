import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/app_router.dart';
import 'package:test_project_depi/core/widget/custom_button_for_all.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/widgets/item_of_track.dart';

class TopicTracksMinistry extends StatelessWidget {
  const TopicTracksMinistry({super.key});

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
                  GoRouter.of(context).push(AppRouter.addTopicTrackMinistry);
                },
                suffixicon: const Icon(
                  Icons.add_circle_outline_rounded,
                ),
                tittle: 'Mobile Application',
                width: 400,
                heigh: 60,
              ),
              Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 55,
                    ),
                    ItemOfTrack(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.subtopictracksministry,
                        );
                      },
                      text: 'Java',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ItemOfTrack(
                      text: 'Kotlin',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ItemOfTrack(
                      text: 'Android',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ItemOfTrack(
                      text: 'Dart',
                    ),
                  ],
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
