import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/app_router.dart';
import 'package:test_project_depi/core/widget/backGroundNavigationBar.dart';
import 'package:test_project_depi/core/widget/containerBackground.dart';
import 'package:test_project_depi/core/widget/custom_bottomNavBar.dart';
import 'package:test_project_depi/core/widget/custom_button.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';
import 'package:test_project_depi/feature/sec_four_student/presentation/view/widgets/FromAndSubjectAndDate.dart';
import 'package:test_project_depi/feature/sec_four_student/presentation/view/widgets/blue_circuit.dart';

class Announcementview extends StatelessWidget {
  const Announcementview({super.key});

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
          child: Column(
            children: [
              CustomButtonForALl(
                prefixxicon: const Icon(
                  Icons.arrow_back,
                ),
                onPressedForprefix: () {},
                tittle: 'Announcement',
                width: 390,
                heigh: 60,
              ),
              const SizedBox(
                height: 45,
              ),
              Card(
                onTap: () {
                  GoRouter.of(context).push(
                    AppRouter.announcementWithDetails,
                  );
                },
                fromAndSubjectAndDate: const FromAndSubjectAndDate(
                  from: 'Ministry of communication',
                  subject: 'Online Meeting in the Next Weekend',
                  date: '6/10/2024',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Card(
                fromAndSubjectAndDate: FromAndSubjectAndDate(
                  from: 'AST Company',
                  subject: 'Check attendance file ',
                  date: '6/10/2024',
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Card(
                fromAndSubjectAndDate: FromAndSubjectAndDate(
                  from: 'Freelance Company',
                  subject: 'Send a technical proposal',
                  date: '6/10/2024',
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const backGroundNavigationBar(
        child: CustomBottomNavBar(),
      ),
    ));
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.fromAndSubjectAndDate,
    this.onTap,
  });
  final FromAndSubjectAndDate fromAndSubjectAndDate;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          ContainerbackGroundforAll(
            width: 390,
            heigh: 110,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 12,
                top: 6,
                right: 10,
              ),
              child: fromAndSubjectAndDate,
            ),
          ),
          const BlueCircuit(),
        ],
      ),
    );
  }
}
