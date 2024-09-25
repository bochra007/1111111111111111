import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class ChartWidget extends StatelessWidget {
  final String text;
  const ChartWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            AspectRatio(
              aspectRatio:
                  1.5, // Adjust the aspect ratio to fit the chart nicely
              child: BarChart(
                BarChartData(
                  alignment: BarChartAlignment.spaceEvenly,
                  borderData:
                      FlBorderData(show: false), // Remove border around chart
                  titlesData: FlTitlesData(
                    show: true,
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        showTitles: true,
                        getTitlesWidget: (value, meta) {
                          switch (value.toInt()) {
                            case 0:
                              return const Text('14');
                            case 1:
                              return const Text('16');
                            case 2:
                              return const Text('20');
                            case 3:
                              return const Text('22');
                            case 4:
                              return const Text('24');
                            case 5:
                              return const Text('26');
                            default:
                              return Container();
                          }
                        },
                      ),
                    ),
                    topTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    leftTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: const AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                  ),
                  gridData: const FlGridData(
                    show: false,
                    drawHorizontalLine: false,
                  ),
                  barGroups: [
                    makeGroupData(0, 7, 12),
                    makeGroupData(1, 6, 10),
                    makeGroupData(2, 11, 9),
                    makeGroupData(3, 10, 10),
                    makeGroupData(4, 5, 12),
                    makeGroupData(5, 8, 10),
                  ],
                  barTouchData: BarTouchData(enabled: false),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  BarChartGroupData makeGroupData(int x, double y1, double y2) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y1,
          color: Colors.blue, // Blue bars
          width: 22, // Width of bars
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(6), topRight: Radius.circular(6)),
        ),
        BarChartRodData(
          toY: y2,
          color: Colors.grey.shade300, // Grey bars on top
          width: 22,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(6), topRight: Radius.circular(6)),
        ),
      ],
    );
  }
}
