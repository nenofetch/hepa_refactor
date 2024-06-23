import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hepa/domain/entities/report.dart';
import 'package:hepa/presentation/misc/constants.dart';
import 'package:hepa/presentation/misc/methods.dart';
import 'package:hepa/presentation/providers/hepa/reports_provider.dart';
import 'package:hepa/presentation/router/router_provider.dart';

class ReportPage extends ConsumerStatefulWidget {
  const ReportPage({super.key});

  @override
  ConsumerState<ReportPage> createState() => ReportPageState();
}

class ReportPageState extends ConsumerState<ReportPage> {
  @override
  Widget build(BuildContext context) {
    final report = ref.watch(reportsProvider);

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.graphic_eq),
                        const SizedBox(
                          width: 32,
                        ),
                        Text(
                          'Jumlah Kalori',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: BarChart(
                        caloriesData(report.value),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            verticalSpace(30),
            AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.graphic_eq),
                        const SizedBox(
                          width: 32,
                        ),
                        Text(
                          'Jumlah Karbohidrat',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: BarChart(
                        carboHydatesData(report.value),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            verticalSpace(30),
            AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.graphic_eq),
                        const SizedBox(
                          width: 32,
                        ),
                        Text(
                          'Jumlah Protein',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: BarChart(
                        proteinData(report.value),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            verticalSpace(30),
            AspectRatio(
              aspectRatio: 1,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.graphic_eq),
                        const SizedBox(
                          width: 32,
                        ),
                        Text(
                          'Jumlah Lemak',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 32,
                    ),
                    Expanded(
                      child: BarChart(
                        fatData(report.value),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            verticalSpace(50),
            Center(
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                    ref.read(routerProvider).pushNamed('detail-report');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: blackColor,
                    foregroundColor: backgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  child: Text(
                    'Detail Riwayat',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: medium,
                      color: ghostWhite,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(
    int x,
    double y,
  ) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: x >= 4 ? Colors.transparent : Colors.red,
          borderRadius: BorderRadius.zero,
          borderDashArray: x >= 4 ? [4, 4] : null,
          width: 30,
          borderSide: BorderSide(color: Colors.blue, width: 2.0),
        ),
      ],
    );
  }

  Widget getTitles(double value, TitleMeta meta) {
    const style = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    );
    List days = [
      'Senin',
      'Selasa',
      'Rabu',
      'Kamis',
      'Jumat',
      'Sabtu',
      'Minggu'
    ];

    Widget text = Text(
      days[value.toInt()],
      style: style,
    );

    return SideTitleWidget(
      axisSide: meta.axisSide,
      space: 16,
      child: text,
    );
  }

// bar chart data for calories
  BarChartData caloriesData(Report? report) {
    double maxTotal = 0.0;

    // Calculate the maximum total value from the report
    if (report != null) {
      for (final category in report.calories) {
        if (category.total > maxTotal) {
          maxTotal = category.total.toDouble();
        }
      }
    }
    return BarChartData(
      maxY: maxTotal *
          1.1, // Add some padding to the maxY value for better visualization
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 30,
            showTitles: true,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(
        report?.calories.length ?? 0,
        (i) => makeGroupData(
          i,
          report?.calories[i].total.toDouble() ?? 0,
        ),
      ),
      gridData: const FlGridData(show: true),
    );
  }

// bar chart data for proteins
  BarChartData proteinData(Report? report) {
    double maxTotal = 0.0;

    // Calculate the maximum total value from the report
    if (report != null) {
      for (final category in report.protein) {
        if (category.total > maxTotal) {
          maxTotal = category.total.toDouble();
        }
      }
    }
    return BarChartData(
      maxY: maxTotal *
          1.1, // Add some padding to the maxY value for better visualization
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 30,
            showTitles: true,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(
        report?.protein.length ?? 0,
        (i) => makeGroupData(
          i,
          report?.protein[i].total.toDouble() ?? 0,
        ),
      ),
      gridData: const FlGridData(show: true),
    );
  }

// bar chart for carbohydrates
  BarChartData carboHydatesData(Report? report) {
    double maxTotal = 0.0;

    // Calculate the maximum total value from the report
    if (report != null) {
      for (final category in report.carbohydrates) {
        if (category.total > maxTotal) {
          maxTotal = category.total.toDouble();
        }
      }
    }
    return BarChartData(
      maxY: maxTotal *
          1.1, // Add some padding to the maxY value for better visualization
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 30,
            showTitles: true,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(
        report?.carbohydrates.length ?? 0,
        (i) => makeGroupData(
          i,
          report?.carbohydrates[i].total.toDouble() ?? 0,
        ),
      ),
      gridData: const FlGridData(show: true),
    );
  }

// bar chart data for fat
  BarChartData fatData(Report? report) {
    double maxTotal = 0.0;

    // Calculate the maximum total value from the report
    if (report != null) {
      for (final category in report.fat) {
        if (category.total > maxTotal) {
          maxTotal = category.total.toDouble();
        }
      }
    }
    return BarChartData(
      maxY: maxTotal *
          1.1, // Add some padding to the maxY value for better visualization
      barTouchData: BarTouchData(
        enabled: false,
      ),
      titlesData: FlTitlesData(
        show: true,
        bottomTitles: AxisTitles(
          sideTitles: SideTitles(
            showTitles: true,
            getTitlesWidget: getTitles,
            reservedSize: 38,
          ),
        ),
        leftTitles: const AxisTitles(
          sideTitles: SideTitles(
            reservedSize: 30,
            showTitles: true,
          ),
        ),
        topTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
        rightTitles: const AxisTitles(
          sideTitles: SideTitles(
            showTitles: false,
          ),
        ),
      ),
      borderData: FlBorderData(
        show: false,
      ),
      barGroups: List.generate(
        report?.fat.length ?? 0,
        (i) => makeGroupData(
          i,
          report?.fat[i].total.toDouble() ?? 0,
        ),
      ),
      gridData: const FlGridData(show: true),
    );
  }
}
