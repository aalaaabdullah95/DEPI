import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/app_router.dart';
import 'package:test_project_depi/core/widget/custom_button_for_all.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/widgets/item_of_track.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/widgets/search_in_track.dart';

class TrackMinistryView extends StatelessWidget {
  const TrackMinistryView({super.key});

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
                    AppRouter.addTrackMinistry,
                  );
                },
                suffixicon: const Icon(
                  Icons.add_circle_outline_rounded,
                ),
                tittle: 'Tracks',
                width: double.infinity,
                heigh: 60,
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 25,
                      ),
                      const Search(),
                      const SizedBox(
                        height: 35,
                      ),
                      ItemOfTrack(
                        text: 'Mobile Application',
                        onTap: () {
                          GoRouter.of(context).push(
                            AppRouter.topicTracksMinistry,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const ItemOfTrack(
                        text: 'Web',
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const ItemOfTrack(
                        text: 'Data science',
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      const ItemOfTrack(
                        text: 'AI&ML',
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
