import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/sport_provider.dart';

class SportPage extends ConsumerStatefulWidget {
  const SportPage({super.key});

  @override
  ConsumerState<SportPage> createState() => _SportPageState();
}

class _SportPageState extends ConsumerState<SportPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Olahraga'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            ...ref.watch(getSportListProvider).whenOrNull(
                      data: (sport) => sport.map(
                        (e) => Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10,
                                  ),
                                  height: 100,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        e.name,
                                        style: TextStyle(
                                          color: ghostWhite,
                                        ),
                                      ),
                                      verticalSpace(30),
                                      Row(
                                        children: [
                                          Text(
                                            '${e.fiveMinutesCalories} kal/5 min',
                                            style: TextStyle(
                                              color: ghostWhite,
                                            ),
                                          ),
                                          horizontalSpace(10),
                                          Text(
                                            '${e.fifteenMinuteCalories} kal/15 min',
                                            style: TextStyle(
                                              color: ghostWhite,
                                            ),
                                          ),
                                          horizontalSpace(10),
                                          Text(
                                            '${e.oneHourCalories} kal/1 hour',
                                            style: TextStyle(
                                              color: ghostWhite,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                verticalSpace(10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ) ??
                [
                  verticalSpace(10),
                  Center(child: CircularProgressIndicator()),
                ]
          ],
        ),
      ),
    );
  }
}
