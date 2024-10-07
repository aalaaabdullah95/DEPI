import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/app_router.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/containerBackground.dart';
import 'package:test_project_depi/core/widget/custom_button_for_all.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/widgets/add_track_name_dialog.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/widgets/item_of_track.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/widgets/search_in_track.dart';

class OnlyGrouptrackscompany extends StatelessWidget {
  const OnlyGrouptrackscompany({super.key});

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
                tittle: 'CAI1_SWD4_S9d',
                width: 400,
                heigh: 60,
              ),
              const Expanded(
                  child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    ContainerbackGroundforAll(
                      width: 400,
                      heigh: 70,
                      child: Center(
                        child: Text(
                          'Attendance',
                          style: Styles.textstyle20BlackM,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 35,
                    ),
                    ContainerbackGroundforAll(
                      width: 400,
                      heigh: 70,
                      child: Center(
                        child: Text(
                          'Online Sessions',
                          style: Styles.textstyle20BlackM,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ContainerbackGroundforAll(
                      width: 400,
                      heigh: 70,
                      child: Center(
                        child: Text(
                          'Material',
                          style: Styles.textstyle20BlackM,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ContainerbackGroundforAll(
                      width: 400,
                      heigh: 70,
                      child: Center(
                        child: Text(
                          'Assignments',
                          style: Styles.textstyle20BlackM,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ContainerbackGroundforAll(
                      width: 400,
                      heigh: 70,
                      child: Center(
                        child: Text(
                          'Times & Places',
                          style: Styles.textstyle20BlackM,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    ContainerbackGroundforAll(
                      width: 400,
                      heigh: 70,
                      child: Center(
                        child: Text(
                          'Send Reports',
                          style: Styles.textstyle20BlackM,
                        ),
                      ),
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
