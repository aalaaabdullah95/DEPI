import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';
import 'package:test_project_depi/core/utilies/app_router.dart';
import 'package:test_project_depi/core/utilies/assets.dart';
import 'package:test_project_depi/core/utilies/styles.dart';
import 'package:test_project_depi/core/widget/backGroundNavigationBar.dart';
import 'package:test_project_depi/core/widget/containerBackground.dart';
import 'package:test_project_depi/core/widget/custom_bottomNavBar.dart';
import 'package:test_project_depi/core/widget/custom_button.dart';
import 'package:test_project_depi/core/widget/grediant_background.dart';

class Announcementwithdetails extends StatelessWidget {
  const Announcementwithdetails({super.key});

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
                onPressedForprefix: () {
                  GoRouter.of(context).push(
                    AppRouter.announcementView,
                  );
                },
                suffixicon: const Icon(
                  FontAwesomeIcons.trashCan,
                  size: 32,
                ),
                onPressedForSuffix: () {},
                tittle: 'Announcement',
                width: 390,
                heigh: 60,
              ),
              const SizedBox(
                height: 45,
              ),
              const Part1OfBodyOfAnnouncementDet(),
              const SizedBox(
                height: 25,
              ),
              const ContainerbackGroundforAll(
                width: 390,
                heigh: 370,
                padding:
                    EdgeInsets.only(top: 14, left: 8, right: 8, bottom: 14),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      '''We are excited to invite you to our upcoming Online Education Meeting scheduled for Saturday, 12th October 2024. This interactive session is designed to help you enhance your skills and knowledge, with a focus on practical learning experiences.During the meeting, we will cover a range of valuable topics, including:
Effective Time Management for Students: Learn how to prioritize tasks and manage your schedule efficiently.
Project-Based Learning: Engage in a hands-on mini-project to apply the concepts you have learned.
Q&A with Experts: Get answers to your questions directly from industry professionals.
Collaborative Brainstorming Session: Work together with other participants to come up with creative solutions to real-world challenges.
This meeting is a great opportunity to expand your knowledge and connect with like-minded peers. Don’t miss out!
Make sure to mark your calendars and stay tuned for further details on how to join the meeting.
We look forward to seeing you online!
Best regards, The Event Team''',
                      style: Styles.textstyle10Black,
                    ),
                    Spacer(),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('sending date : 10/10/2024'),
                    )
                  ],
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

class Part1OfBodyOfAnnouncementDet extends StatelessWidget {
  const Part1OfBodyOfAnnouncementDet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ContainerbackGroundforAll(
      padding: const EdgeInsets.only(
        left: 15,
      ),
      width: 390,
      heigh: 60,
      child: Row(
        children: [
          CircleAvatar(
            maxRadius: 20,
            backgroundColor: Colors.white,
            child: Image.asset(Assets.logo),
          ),
          const VerticalDivider(
            indent: 3,
            endIndent: 3,
            thickness: 1,
            width: 40,
            color: Colors.black,
          ),
          const Expanded(
            child: Text(
              'Online meeting in the next weekend 12/10/2024 ( announcement topic ). ',
              style: Styles.textstyle16Black,
              maxLines: 2,
              overflow: TextOverflow.visible,
            ),
          )
        ],
      ),
    );
  }
}
