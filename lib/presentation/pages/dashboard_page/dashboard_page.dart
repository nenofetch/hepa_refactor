import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/pages/dashboard_page/methods/user_info.dart';
import 'package:hepa/presentation/router/router_provider.dart';
import 'package:hepa/presentation/widgets/hepa_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DashboardPage extends ConsumerWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 215,
                    decoration: BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  userInfo(ref),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Health Planner Menu',
                      style: TextStyle(fontSize: 18, fontWeight: bold),
                    ),
                    verticalSpace(25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HepaMenuItem(
                          image: 'assets/stethoscope.png',
                          title: 'Antropometri',
                          onTap: () => ref
                              .read(routerProvider)
                              .pushNamed('anthropometri'),
                        ),
                        horizontalSpace(10),
                        HepaMenuItem(
                          image: 'assets/calories.png',
                          title: 'Olahraga',
                          onTap: () =>
                              ref.read(routerProvider).pushNamed('sport'),
                        ),
                      ],
                    ),
                    verticalSpace(50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HepaMenuItem(
                          image: 'assets/pie_chart_fill.png',
                          title: 'Riwayat',
                          onTap: () =>
                              ref.read(routerProvider).pushNamed('history'),
                        ),
                        horizontalSpace(10),
                        HepaMenuItem(
                          image: 'assets/food.png',
                          title: 'Video Edukasi',
                          onTap: () =>
                              ref.read(routerProvider).pushNamed('education'),
                        ),
                      ],
                    ),
                    verticalSpace(100)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
