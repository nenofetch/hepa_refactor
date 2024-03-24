import 'package:hepa/presentation/pages/login_page/login_page.dart';
import 'package:hepa/presentation/pages/splash_page/splash_page.dart';
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
          path: '/login',
          name: 'login',
          builder: (context, state) => LoginPage(),
        ),
      ],
    );
