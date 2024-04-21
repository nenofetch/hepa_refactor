import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/providers/hepa/drinks_provider.dart';

Widget drinkList(WidgetRef ref) => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(children: [
        ...ref.watch(getDrinksProvider).whenOrNull(
                  data: (food) => food.map((e) => Text(e.name!)),
                ) ??
            [],
      ]),
    );
