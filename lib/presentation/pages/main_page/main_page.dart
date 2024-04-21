import 'package:hepa/presentation/extensions/build_context_extension.dart';
import 'package:hepa/presentation/pages/dashboard_page/dashboard_page.dart';
import 'package:hepa/presentation/pages/food_page/food_page.dart';
import 'package:hepa/presentation/pages/profile_page/profile_page.dart';

import 'package:hepa/presentation/providers/user_data/user_data_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';
import 'package:hepa/presentation/widgets/bottom_nav_bar.dart';
import 'package:hepa/presentation/widgets/bottom_nav_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:permission_handler/permission_handler.dart';

class MainPage extends ConsumerStatefulWidget {
  const MainPage({super.key});

  @override
  ConsumerState<MainPage> createState() => _MainPageState();
}

class _MainPageState extends ConsumerState<MainPage> {
  PageController pageController = PageController();
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    ref.listen(userDataProvider, (previous, next) {
      if (previous != null && next is AsyncData && next.value == null) {
        showDialog(
            context: context,
            builder: (_) {
              return AlertDialog(
                title: Text('Harap Masuk!'),
                content: Text('Anda harus masuk terlebih dahulu'),
                actions: [
                  TextButton(
                      style: TextButton.styleFrom(
                        textStyle: Theme.of(context).textTheme.labelLarge,
                      ),
                      onPressed: () =>
                          ref.read(routerProvider).goNamed('login'),
                      child: Text('OK'))
                ],
              );
            });
      } else if (next is AsyncError) {
        context.showSnackBar(next.error.toString());
      }
    });
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: pageController,
            onPageChanged: (value) => setState(() {
              selectedPage = value;
            }),
            children: const <Widget>[
              Center(
                child: DashboardPage(),
              ),
              Center(
                child: FoodPage(),
              ),
              Center(
                child: ProfilePage(),
              ),
            ],
          ),
          BottomNavBar(
              items: [
                BottomNavBarItem(
                  index: 0,
                  isSelected: selectedPage == 0,
                  title: 'Dashboard',
                  icon: Icons.dashboard,
                  selectedIcon: Icons.dashboard,
                ),
                BottomNavBarItem(
                  index: 1,
                  isSelected: selectedPage == 1,
                  title: 'Makanan',
                  icon: Icons.fastfood,
                  selectedIcon: Icons.fastfood,
                ),
                BottomNavBarItem(
                  index: 2,
                  isSelected: selectedPage == 2,
                  title: 'Profil',
                  icon: Icons.person,
                  selectedIcon: Icons.person,
                )
              ],
              onTap: (index) {
                selectedPage = index;
                pageController.animateToPage(
                  selectedPage,
                  duration: const Duration(milliseconds: 200),
                  curve: Curves.easeInOut,
                );
              },
              selectedIndex: 0)
        ],
      ),
    );
  }
}

void requestNotification() async {
  var status = await Permission.notification.status;

  if (status.isGranted) {
    debugPrint('granted');
  } else if (status.isDenied) {
    if (await Permission.notification.request().isGranted) {
      debugPrint(status.name);
    }
  }
}
