import 'package:hepa/presentation/pages/anthropometri_page/anthropometri_page.dart';
import 'package:hepa/presentation/pages/consultation_page/consultation_page.dart';
import 'package:hepa/presentation/pages/detail_drink_page/detail_drink_page.dart';
import 'package:hepa/presentation/pages/detail_food_page/detail_food_page.dart';
import 'package:hepa/presentation/pages/detail_report/detail_report_page.dart';
import 'package:hepa/presentation/pages/detail_snack_page/detail_snack_page.dart';

import 'package:hepa/presentation/pages/education_page/education_page.dart';
import 'package:hepa/presentation/pages/food_page/food_page.dart';
import 'package:hepa/presentation/pages/report_page/report_page.dart';
import 'package:hepa/presentation/pages/login_page/login_page.dart';
import 'package:hepa/presentation/pages/main_page/main_page.dart';
import 'package:hepa/presentation/pages/profile_page/profile_page.dart';
import 'package:hepa/presentation/pages/register_page/register_page.dart';
import 'package:hepa/presentation/pages/splash_page/splash_page.dart';
import 'package:hepa/presentation/pages/sport_page/sport_page.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:go_router/go_router.dart';

part 'router_provider.g.dart';

@Riverpod(keepAlive: true)
Raw<GoRouter> router(RouterRef ref) => GoRouter(
      routes: [
        GoRoute(
          path: '/',
          name: 'splash',
          builder: (context, state) => SplashPage(),
        ),
        GoRoute(
          path: '/main',
          name: 'main',
          builder: (context, state) => MainPage(),
        ),
        GoRoute(
          path: '/login',
          name: 'login',
          builder: (context, state) => LoginPage(),
        ),
        GoRoute(
          path: '/register',
          name: 'register',
          builder: (context, state) => RegisterPage(),
        ),
        GoRoute(
          path: '/consultation',
          name: 'consultation',
          builder: (context, state) => ConsultationPage(),
        ),
        GoRoute(
          path: '/profile',
          name: 'profile',
          builder: (context, state) => ProfilePage(),
        ),
        GoRoute(
          path: '/anthropometri',
          name: 'anthropometri',
          builder: (context, state) => AnthropometriPage(),
        ),
        GoRoute(
          path: '/history',
          name: 'history',
          builder: (context, state) => ReportPage(),
        ),
        GoRoute(
          path: '/sport',
          name: 'sport',
          builder: (context, state) => SportPage(),
        ),
        GoRoute(
          path: '/food',
          name: 'food',
          builder: (context, state) => FoodPage(),
        ),
        GoRoute(
          path: '/detail-food/:category',
          name: 'detail-food',
          builder: (context, state) => DetailFoodPage(
            category: state.pathParameters['category'],
          ),
        ),
        GoRoute(
          path: '/detail-snack/:category',
          name: 'detail-snack',
          builder: (context, state) => DetailSnackPage(
            category: state.pathParameters['category'],
          ),
        ),
        GoRoute(
          path: '/detail-drink/:category',
          name: 'detail-drink',
          builder: (context, state) => DetailDrinkPage(
            category: state.pathParameters['category'],
          ),
        ),
        GoRoute(
          path: '/education',
          name: 'education',
          builder: (context, state) => EducationPage(),
        ),
        GoRoute(
          path: '/detail-report',
          name: 'detail-report',
          builder: (context, state) => DetailReportPage(),
        ),
      ],
    );
