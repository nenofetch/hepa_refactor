import 'package:flutter/material.dart';
import 'package:hepa/shared/hepa_menu_item.dart';
import 'package:hepa/utils/constans.dart';
import 'package:hepa/utils/methods.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
                    decoration: const BoxDecoration(
                      color: blueColor,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  // userInfo(ref),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 45),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
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
                          onTap: () => (),
                        ),
                        horizontalSpace(10),
                        HepaMenuItem(
                          image: 'assets/calories.png',
                          title: 'Olahraga',
                          onTap: () => (),
                        )
                      ],
                    ),
                    verticalSpace(50),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        HepaMenuItem(
                          image: 'assets/pie_chart_fill.png',
                          title: 'Riwayat',
                          onTap: () => (),
                        ),
                        horizontalSpace(10),
                        HepaMenuItem(
                          image: 'assets/food.png',
                          title: 'Video Edukasi',
                          onTap: () => (),
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
