import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/providers/hepa/snacks_provider.dart';

Widget snackList(WidgetRef ref) => SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Column(children: [
        ...ref.watch(getSnacksProvider).whenOrNull(
                  data: (food) => food.map((e) => Text(e.name!)),
                ) ??
            [],
      ]),
    );
