import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class CustomBarChart extends StatelessWidget {
  CustomBarChart({super.key});

  // Data for barcharts groups
  final List<BarChartGroupData> barGroups = [
    BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(
          toY: 9,
          width: 25,
          color: Colors.amber,
          backDrawRodData: BackgroundBarChartRodData(
            fromY: 3,
            toY: 6,
            color: Colors.white,
            show: true,
          ),
          rodStackItems: [
            BarChartRodStackItem(0, 3, Colors.red),
            BarChartRodStackItem(3, 5, Colors.green),
            BarChartRodStackItem(5, 9, Colors.blue),
          ],
        ),
      ],
    ),
    BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(toY: 2, width: 25, color: Colors.indigoAccent),
        BarChartRodData(toY: 6, width: 25, color: Colors.orange),
        BarChartRodData(toY: 4, width: 25, color: Colors.purpleAccent),
      ],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(toY: 6, width: 25, color: Colors.red),
      ],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(toY: 5, width: 25, color: Colors.pink),
      ],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(toY: 3, width: 25, color: Colors.blue),
      ],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(toY: 6, width: 25, color: Colors.red),
      ],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(toY: 5, width: 25, color: Colors.pink),
      ],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(toY: 3, width: 25, color: Colors.blue),
      ],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(toY: 6, width: 25, color: Colors.red),
      ],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(toY: 5, width: 25, color: Colors.pink),
      ],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(toY: 3, width: 25, color: Colors.blue),
      ],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(toY: 5, width: 25, color: Colors.pink),
      ],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(toY: 3, width: 25, color: Colors.blue),
      ],
    ),
    BarChartGroupData(
      x: 3,
      barRods: [
        BarChartRodData(toY: 6, width: 25, color: Colors.red),
      ],
    ),
    BarChartGroupData(
      x: 4,
      barRods: [
        BarChartRodData(toY: 5, width: 25, color: Colors.pink),
      ],
    ),
    BarChartGroupData(
      x: 5,
      barRods: [
        BarChartRodData(toY: 3, width: 25, color: Colors.blue),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: calculateWidthDynamically(context),
          child: BarChart(
            BarChartData(
              borderData: FlBorderData(
                border: const Border(
                  top: BorderSide.none,
                  right: BorderSide.none,
                  left: BorderSide(width: 1),
                  bottom: BorderSide(width: 1),
                ),
              ),
              groupsSpace: 20,
              barGroups: barGroups,
            ),
          ),
        ),
      ),
    );
  }

  calculateWidthDynamically(BuildContext context) {
    double availableScreenWidth = MediaQuery.of(context).size.width;
    int numBars = 0;
    for (BarChartGroupData barGroupData in barGroups) {
      numBars = numBars + barGroupData.barRods.length;
    }
    debugPrint('Total number of bars : $numBars');
    double width = numBars * 40.0;
    debugPrint(
        'Available screen with: $availableScreenWidth  ,Required width : $width');
    double desiredWidth =
        width < availableScreenWidth ? availableScreenWidth : width;
    return desiredWidth;
  }

}
