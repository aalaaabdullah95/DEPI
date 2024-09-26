import 'package:go_router/go_router.dart';
import 'package:test_project_depi/feature/registers/presentation/view/register_one_view.dart';
import 'package:test_project_depi/feature/registers/presentation/view/register_three_view.dart';
import 'package:test_project_depi/feature/registers/presentation/view/register_two_view.dart';

abstract class AppRouter {
  static const registerOneView = '/registerOneView';
  static const registerTwoView = '/registerTwoView';
  static const registerThreeView = '/registerThreeView';
  static final routers = GoRouter(routes: [
    GoRoute(
      path: '/',
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
  ]);
}
