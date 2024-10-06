import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/app_router.dart';
import 'package:test_project_depi/core/widget/custom_button_for_all.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/widgets/add_track_name_dialog.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/widgets/item_of_track.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/widgets/search_in_track.dart';

class GroupTrackComponyView extends StatelessWidget {
  const GroupTrackComponyView({super.key});

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
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return const AddTrackDialog(
                        tittle: 'Group Code',
                        tittleOfAppBar: 'Add Group',
                      );
                    },
                  );
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
                      height: 25,
                    ),
                    const Search(),
                    const SizedBox(
                      height: 35,
                    ),
                    ItemOfTrack(
                      onTap: () {
                        GoRouter.of(context).push(
                          AppRouter.onlyGrouptrackscompany,
                        );
                      },
                      text: 'CAI1_SWD4_S9d',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ItemOfTrack(
                      text: 'CAI1_SWD4_S8e',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ItemOfTrack(
                      text: 'CAI1_SWD4_S7f',
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const ItemOfTrack(
                      text: 'CAI1_SWD4_S6d',
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
