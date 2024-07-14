import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/detail_report_provider.dart';

import 'package:tab_container/tab_container.dart';

class DetailCalculationPage extends ConsumerWidget {
  const DetailCalculationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final data = ref.watch(detailReportsProvider);
    return Scaffold(
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
            Text('BMI Kalkulator'),
            Text('BMR dan TDEE Kalkulator'),
          ],
          children: [
            // BMI Kalkulator
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: data.whenOrNull(
                data: (data) => data!.bmi.isNotEmpty
                    ? Column(
                        children: data.bmi
                            .map(
                              (e) => Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        e.name,
                                        style: primaryFont.copyWith(
                                          fontSize: 16,
                                          fontWeight: bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18),
                                      child: Text(
                                        'Status : ${e.resultBmi!}',
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18),
                                      child: Text(
                                        'Nilai IMT : ${e.imt}',
                                      ),
                                    ),
                                    verticalSpace(10),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Tinggi : ${e.height}',
                                          ),
                                          horizontalSpace(10),
                                          Text('Berat : ${e.weight}'),
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

            // BMR dan TDEE Kalkulator
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: data.whenOrNull(
                data: (data) => data!.bmr.isNotEmpty
                    ? Column(
                        children: data.bmr
                            .map(
                              (e) => Card(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      title: Text(
                                        e.name,
                                        style: primaryFont.copyWith(
                                          fontSize: 16,
                                          fontWeight: bold,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 18),
                                      child: Text(
                                        'Nilai BMR : ${e.resultBmr}',
                                      ),
                                    ),
                                    verticalSpace(10),
                                    Padding(
                                      padding: EdgeInsets.only(left: 18),
                                      child: Row(
                                        children: [
                                          Text(
                                            'Tinggi : ${e.height}',
                                          ),
                                          horizontalSpace(10),
                                          Text('Berat : ${e.weight}'),
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
