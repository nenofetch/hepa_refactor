import 'package:flutter/material.dart';
import 'package:hepa/presentation/misc/constants.dart';

List<Widget> drinkCard({
  required String foodName,
  required String foodImage,
  void Function(String category)? onTap,
}) =>
    [
      GestureDetector(
        onTap: () => onTap!(foodName),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          height: 80,
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: Colors.blue.shade500,
            ),
            child: Row(
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
      )
    ];
