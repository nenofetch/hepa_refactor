import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/pages/food_page/methods/drink_card.dart';
import 'package:hepa/presentation/pages/food_page/methods/food_card.dart';
import 'package:hepa/presentation/pages/food_page/methods/snack_card.dart';
import 'package:hepa/presentation/router/router_provider.dart';

class FoodPage extends ConsumerWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Text(
                  'Catat Makanan Yang Dikonsumsi',
                  style: primaryFont.copyWith(
                    fontSize: 20,
                    fontWeight: bold,
                  ),
                ),
                verticalSpace(10),
                ...foodCard(
                    foodName: 'Makan Pagi',
                    foodImage: 'assets/icon_breakfast.png',
                    onTap: (category) {
                      ref.read(routerProvider).pushNamed('detail-food',
                          pathParameters: {'category': 'Makan Pagi'});
                    }),
                verticalSpace(10),
                ...foodCard(
                    foodName: 'Makan Siang',
                    foodImage: 'assets/icon_lunch.png',
                    onTap: (category) {
                      ref.read(routerProvider).pushNamed('detail-food',
                          pathParameters: {'category': 'Makan Siang'});
                    }),
                verticalSpace(10),
                ...foodCard(
                    foodName: 'Makan Malam',
                    foodImage: 'assets/icon_dinner.png',
                    onTap: (category) {
                      ref.read(routerProvider).pushNamed('detail-food',
                          pathParameters: {'category': 'Makan Malam'});
                    }),
                verticalSpace(10),
                ...snackCard(
                    foodName: 'Cemilan',
                    foodImage: 'assets/icon_junkfood.png',
                    onTap: (category) {
                      ref.read(routerProvider).pushNamed('detail-snack',
                          pathParameters: {'category': 'Cemilan'});
                    }),
                verticalSpace(10),
                ...drinkCard(
                    foodName: 'Air Minum',
                    foodImage: 'assets/icon_drink.png',
                    onTap: (category) {
                      ref.read(routerProvider).pushNamed('detail-drink',
                          pathParameters: {'category': 'Air Minum'});
                    }),
              ],
            ),
          )
        ],
      ),
    );
  }
}
