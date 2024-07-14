import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/detail_report_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';

import 'package:tab_container/tab_container.dart';

class DetailReportPage extends ConsumerWidget {
  const DetailReportPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(detailReportsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Report'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text('Detail Kalkulasi Masa Tubuh'),
              onTap: () =>
                  ref.read(routerProvider).pushNamed('detail-calculator'),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: TabContainer(
          borderRadius: BorderRadius.circular(10),
          tabBorderRadius: BorderRadius.circular(10),
          selectedTextStyle: const TextStyle(
            color: Colors.blue,
            fontSize: 12.0,
          ),
          unselectedTextStyle: const TextStyle(
            color: Colors.black,
            fontSize: 10.0,
          ),
          tabs: [
            Text('Makan Pagi'),
            Text('Makan Siang'),
            Text('Makan Malam'),
            Text('Cemilan'),
            Text('Air Minum'),
            Text('Olahraga'),
          ],
          children: [
            // Makan Pagi
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: data.whenOrNull(
                data: (data) => data!.breakfast.isNotEmpty
                    ? Column(
                        children: data.breakfast
                            .map(
                              (e) => Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Makanan : ${e.name}',
                                        style: primaryFont.copyWith(
                                          fontSize: 16,
                                          fontWeight: bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Kalori : ${e.calories}',
                                          ),
                                          horizontalSpace(10),
                                          Text(
                                            'Karbohidrat : ${e.carbohydrates}',
                                          ),
                                          horizontalSpace(10),
                                          Text('Protein : ${e.protein}'),
                                          horizontalSpace(10),
                                          Text('Lemak : ${e.fat}')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      )
                    : const Center(
                        child: Text('No Data'),
                      ),
              ),
            ),
            // Makan Siang
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: data.whenOrNull(
                data: (data) => data!.lunch.isNotEmpty
                    ? Column(
                        children: data.lunch
                            .map(
                              (e) => Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Makanan : ${e.name}',
                                        style: primaryFont.copyWith(
                                          fontSize: 16,
                                          fontWeight: bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Kalori : ${e.calories}',
                                          ),
                                          horizontalSpace(10),
                                          Text(
                                            'Karbohidrat : ${e.carbohydrates}',
                                          ),
                                          horizontalSpace(10),
                                          Text('Protein : ${e.protein}'),
                                          horizontalSpace(10),
                                          Text('Lemak : ${e.fat}')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      )
                    : const Center(
                        child: Text('No Data'),
                      ),
              ),
            ),
            // Makan Malam
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: data.whenOrNull(
                data: (data) => data!.dinner.isNotEmpty
                    ? Column(
                        children: data.dinner
                            .map(
                              (e) => Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Makanan : ${e.name}',
                                        style: primaryFont.copyWith(
                                          fontSize: 16,
                                          fontWeight: bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Kalori : ${e.calories}',
                                          ),
                                          horizontalSpace(10),
                                          Text(
                                            'Karbohidrat : ${e.carbohydrates}',
                                          ),
                                          horizontalSpace(10),
                                          Text('Protein : ${e.protein}'),
                                          horizontalSpace(10),
                                          Text('Lemak : ${e.fat}')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      )
                    : const Center(
                        child: Text('No Data'),
                      ),
              ),
            ),
            // Cemilan
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: data.whenOrNull(
                data: (data) => data!.snack.isNotEmpty
                    ? Column(
                        children: data.snack
                            .map(
                              (e) => Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Makanan : ${e.name}',
                                        style: primaryFont.copyWith(
                                          fontSize: 16,
                                          fontWeight: bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Kalori : ${e.calories}',
                                          ),
                                          horizontalSpace(10),
                                          Text(
                                            'Karbohidrat : ${e.carbohydrates}',
                                          ),
                                          horizontalSpace(10),
                                          Text('Protein : ${e.protein}'),
                                          horizontalSpace(10),
                                          Text('Lemak : ${e.fat}')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      )
                    : const Center(
                        child: Text('No Data'),
                      ),
              ),
            ),
            // Air Minum
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: data.whenOrNull(
                data: (data) => data!.drink.isNotEmpty
                    ? Column(
                        children: data.drink
                            .map(
                              (e) => Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Makanan : ${e.name}',
                                        style: primaryFont.copyWith(
                                          fontSize: 16,
                                          fontWeight: bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Kalori : ${e.calories}',
                                          ),
                                          horizontalSpace(10),
                                          Text(
                                            'Karbohidrat : ${e.carbohydrates}',
                                          ),
                                          horizontalSpace(10),
                                          Text('Protein : ${e.protein}'),
                                          horizontalSpace(10),
                                          Text('Lemak : ${e.fat}')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      )
                    : const Center(
                        child: Text('No Data'),
                      ),
              ),
            ),
            // Olahraga
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: data.whenOrNull(
                data: (data) => data!.sports.isNotEmpty
                    ? Column(
                        children: data.sports
                            .map(
                              (e) => Card(
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        'Olahraga : ${e.name}',
                                        style: primaryFont.copyWith(
                                          fontSize: 16,
                                          fontWeight: bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18),
                                      child: Row(
                                        children: [
                                          Text(
                                              'Durasi Olahraga : ${e.duration}')
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                            .toList(),
                      )
                    : const Center(
                        child: Text('No Data'),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
