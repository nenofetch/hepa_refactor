import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:d_chart/d_chart.dart';

class HistoryPage extends ConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List<OrdinalData> ordinalList = [
      OrdinalData(domain: 'Senin', measure: 2),
      OrdinalData(domain: 'Selasa', measure: 0),
      OrdinalData(domain: 'Rabu', measure: 0),
      OrdinalData(domain: 'Kamis', measure: 1),
      OrdinalData(domain: 'Jumat', measure: 0),
      OrdinalData(domain: 'Sabtu', measure: 9),
      OrdinalData(domain: 'Minggu', measure: 0),
    ];
    return Scaffold(
      body: Container(
        color: Colors.purple[100],
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: DChartBarO(
            allowSliding: false,
            animate: false,
            animationDuration: const Duration(milliseconds: 300),
            barLabelValue: (group, ordinalData, index) {
              String measure = ordinalData.measure.round().toString();
              return measure;
            },
            barLabelDecorator: BarLabelDecorator(
              barLabelPosition: BarLabelPosition.auto,
              labelAnchor: BarLabelAnchor.start,
              labelPadding: 10,
            ),
            configRenderBar: ConfigRenderBar(
              barGroupInnerPaddingPx: 2,
              barGroupingType: BarGroupingType.grouped,
              fillPattern: FillPattern.solid,
              maxBarWidthPx: 60,
              radius: 30,
              stackedBarPaddingPx: 1,
              strokeWidthPx: 0,
            ),
            fillColor: (group, ordinalData, index) {
              return switch (ordinalData.measure) {
                3 => Colors.red,
                9 => Colors.green,
                _ => group.color,
                // _ => Colors.transparent,
              };
            },
            flipVertical: false,
            insideBarLabelStyle: (group, ordinalData, index) {
              return const LabelStyle(
                color: Colors.white,
                fontSize: 16,
              );
            },
            layoutMargin: LayoutMargin(30, 20, 20, 20),
            outsideBarLabelStyle: (group, ordinalData, index) {
              return const LabelStyle(
                color: Colors.black,
                fontSize: 16,
              );
            },
            vertical: true,
            fillPattern: (group, ordinalData, index) {
              if (ordinalData.domain == 'Tue' && group.id == '1') {
                return FillPattern.forwarHatch;
              }
              return FillPattern.solid;
            },
            domainAxis: const DomainAxis(
              // ordinalViewport: OrdinalViewport('Tue', 2),
              gapAxisToLabel: 5,
              labelAnchor: LabelAnchor.centered,
              thickLength: 5,
              labelRotation: 0,
              labelStyle: LabelStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              lineStyle: LineStyle(
                color: Colors.green,
                thickness: 1,
                dashPattern: [],
              ),
              minimumPaddingBetweenLabels: 0,
              showLine: true,
            ),
            measureAxis: MeasureAxis(
              numericViewport: const NumericViewport(0, 12),
              desiredTickCount: 5,
              showLine: true,
              gapAxisToLabel: 5,
              thickLength: 5,
              labelAnchor: LabelAnchor.centered,
              labelFormat: (measure) {
                return '${measure?.toStringAsFixed(0)} K';
              },
              labelStyle: const LabelStyle(
                color: Colors.black,
                fontSize: 14,
              ),
              lineStyle: const LineStyle(
                color: Colors.green,
                thickness: 1,
                dashPattern: [],
              ),
            ),
            groupList: [
              OrdinalGroup(
                id: '1',
                data: ordinalList,
              ),
              OrdinalGroup(
                id: '2',
                data: ordinalList,
              ),
              OrdinalGroup(
                id: '3',
                data: ordinalList,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
