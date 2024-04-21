import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:hepa/presentation/providers/hepa/foods_provider.dart';

Widget foodList(WidgetRef ref) => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(children: [
        ...ref.watch(getFoodsProvider).whenOrNull(
                  data: (food) => food.map((e) => Text(e.name!)),
                ) ??
            [],
      ]),
    );
