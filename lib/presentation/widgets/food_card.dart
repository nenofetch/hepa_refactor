import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/router/router_provider.dart';

class FoodCard extends ConsumerWidget {
  final String foodName, foodImage, route;

  const FoodCard(this.foodName, this.foodImage, this.route, {super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.watch(routerProvider).pushNamed(
          'detail-food',
          queryParameters: {'category': 'Sore'},
        );
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 12),
        height: 80,
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: greyColor,
          ),
          child: Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                foodImage,
                height: 80,
                width: 80,
                fit: BoxFit.cover,
              ),
              SizedBox(
                width: 12,
              ),
              Text(
                foodName,
                style: primaryFont.copyWith(
                  fontSize: 16,
                  fontWeight: bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
