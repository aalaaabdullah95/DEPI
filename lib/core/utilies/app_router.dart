import 'package:go_router/go_router.dart';
import 'package:test_project_depi/feature/registers/presentation/view/register_one_view.dart';
import 'package:test_project_depi/feature/registers/presentation/view/register_three_view.dart';
import 'package:test_project_depi/feature/registers/presentation/view/register_two_view.dart';
import 'package:test_project_depi/feature/sec_four_student/presentation/view/announcementView.dart';
import 'package:test_project_depi/feature/sec_four_student/presentation/view/announcementWithDetails.dart';
import 'package:test_project_depi/feature/sec_six_student/presentation/view/setting_student_screen.dart';
import 'package:test_project_depi/feature/sec_three_student/presentation/view/complaints_and_suggestions.dart';

abstract class AppRouter {
  static const registerOneView = '/registerOneView';
  static const registerTwoView = '/registerTwoView';
  static const registerThreeView = '/registerThreeView';
  static const complaintsAndSuggestions1 = '/ComplaintsAndSuggestions1';
  static const announcementView = '/announcementView';
  static const announcementWithDetails = '/announcementWithDetails';
  static const settingStudentScreen = '/SettingStudentScreen';
  static const accountSettingStudentScreen = '/AccountSettingStudentScreen';

  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SettingStudentScreen(),
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
    // GoRoute(
    //   path: accountSettingStudentScreen,
    //   builder: (context, state) => const AccountSettingStudentScreen(),
    // ),
  ]);
}
