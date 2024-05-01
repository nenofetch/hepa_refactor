import 'package:hepa/features/auth/login/page/login_page.dart';
import 'package:hepa/features/auth/register/page/register_page.dart';
import 'package:hepa/features/home/page/home_page.dart';
import 'package:refreshed/refreshed.dart';

class Routes {
  Routes._();
  static var routes = [
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/register',
      page: () => const RegisterPage(),
      transition: Transition.fade,
    ),
    GetPage(
      name: '/home',
      page: () => const HomePage(),
      transition: Transition.fade,
    )
  ];
}
