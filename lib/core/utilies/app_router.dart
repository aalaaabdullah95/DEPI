import 'package:go_router/go_router.dart';
import 'package:test_project_depi/feature/registers/presentation/view/register_one_view.dart';
import 'package:test_project_depi/feature/registers/presentation/view/register_three_view.dart';
import 'package:test_project_depi/feature/registers/presentation/view/register_two_view.dart';
import 'package:test_project_depi/feature/sec%20_tracks_ministry/presentation/view/Topic_tracks_Ministry.dart';
import 'package:test_project_depi/feature/sec%20_tracks_ministry/presentation/view/track_ministry_view.dart';
import 'package:test_project_depi/feature/sec%20_tracks_ministry/presentation/view/widgets/SubTopictracksMinistry.dart';
import 'package:test_project_depi/feature/sec%20_tracks_ministry/presentation/view/widgets/add_sub_topic_track_ministry.dart';
import 'package:test_project_depi/feature/sec%20_tracks_ministry/presentation/view/widgets/add_topic_track_ministry.dart';
import 'package:test_project_depi/feature/sec%20_tracks_ministry/presentation/view/widgets/add_track_ministry.dart';
import 'package:test_project_depi/feature/sec_four_student/presentation/view/announcementView.dart';
import 'package:test_project_depi/feature/sec_four_student/presentation/view/announcementWithDetails.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/account_setting_student_screen.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/setting_student_screen.dart';
import 'package:test_project_depi/feature/sec_three_student/presentation/view/complaints_and_suggestions.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/group_track_compony_view.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/only_group_track_compony.dart';
import 'package:test_project_depi/feature/sec_track_compony/presentation/view/track_compony_view.dart';

abstract class AppRouter {
  static const registerOneView = '/registerOneView';
  static const registerTwoView = '/registerTwoView';
  static const registerThreeView = '/registerThreeView';
  static const complaintsAndSuggestions1 = '/ComplaintsAndSuggestions1';
  static const announcementView = '/announcementView';
  static const announcementWithDetails = '/announcementWithDetails';
  static const settingStudentScreen = '/SettingStudentScreen';
  static const accountSettingStudentScreen = '/AccountSettingStudentScreen';
  static const trackComponyView = '/trackComponyView';
  static const grouptrackComponyView = '/grouptrackComponyView';
  static const onlyGrouptrackscompany = '/onlyGrouptrackscompany';
  static const trackMinistryView = '/trackMinistryView';
  static const addTrackMinistry = '/addTrackMinistry';
  static const topicTracksMinistry = '/topicTracksMinistry';
  static const addTopicTrackMinistry = '/addTopicTrackMinistry';
  static const subtopictracksministry = '/subtopictracksministry';
  static const addSubTopicTrackMinistry = '/addSubTopicTrackMinistry';

  static final routers = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const TrackMinistryView(),
      ),
      GoRoute(
        path: registerOneView,
        builder: (context, state) => const RegisterOneView(),
      ),
      GoRoute(
        path: registerTwoView,
        builder: (context, state) => const RegisterTwoView(),
      ),
      GoRoute(
        path: registerThreeView,
        builder: (context, state) => const RegisterThreeView(),
      ),
      GoRoute(
        path: complaintsAndSuggestions1,
        builder: (context, state) => const ComplaintsAndSuggestions1(),
      ),
      GoRoute(
        path: announcementView,
        builder: (context, state) => const Announcementview(),
      ),
      GoRoute(
        path: announcementWithDetails,
        builder: (context, state) => const Announcementwithdetails(),
      ),
      GoRoute(
        path: settingStudentScreen,
        builder: (context, state) => const SettingStudentScreen(),
      ),
      GoRoute(
        path: accountSettingStudentScreen,
        builder: (context, state) => const AccountSettingStudentScreen(),
      ),
      GoRoute(
        path: trackComponyView,
        builder: (context, state) => const TrackComponyView(),
      ),
      GoRoute(
        path: grouptrackComponyView,
        builder: (context, state) => const GroupTrackComponyView(),
      ),
      GoRoute(
        path: onlyGrouptrackscompany,
        builder: (context, state) => const OnlyGrouptrackscompany(),
      ),
      GoRoute(
        path: trackMinistryView,
        builder: (context, state) => const TrackMinistryView(),
      ),
      GoRoute(
        path: addTrackMinistry,
        builder: (context, state) => const AddTrackMinistry(),
      ),
      GoRoute(
        path: topicTracksMinistry,
        builder: (context, state) => const TopicTracksMinistry(),
      ),
      GoRoute(
        path: addTopicTrackMinistry,
        builder: (context, state) => const AddTopicTrackMinistry(),
      ),
      GoRoute(
        path: subtopictracksministry,
        builder: (context, state) => const Subtopictracksministry(),
      ),
      GoRoute(
        path: addSubTopicTrackMinistry,
        builder: (context, state) => const AddSubTopicTrackMinistry(),
      ),
    ],
  );
}
