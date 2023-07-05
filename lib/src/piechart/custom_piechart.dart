import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PieChart(
        PieChartData(
            centerSpaceRadius: 5.0,
            borderData: FlBorderData(show: false),
            sections: [
              PieChartSectionData(
                  value: 10,
                  color: Colors.purple,
                  radius: 100,
                  showTitle: true,
                  title: 'Rent',
                  titleStyle: const TextStyle(color: Colors.red,fontSize: 14.0),
                  titlePositionPercentageOffset: 1.2,
                  borderSide: const BorderSide(color: Colors.pink,width: 4.0)
                  ),

              PieChartSectionData(
                  value: 20,
                  color: Colors.amber,
                  radius: 100,
                  showTitle: true,
                  title: 'Grossory',
                  titleStyle: const TextStyle(color: Colors.red, fontSize: 14.0),
                  titlePositionPercentageOffset: 1.2),
              PieChartSectionData(
                  value: 30,
                  color: Colors.green,
                  radius: 100,
                  showTitle: true,
                  title: 'EMI',
                  titleStyle: const TextStyle(color: Colors.red, fontSize: 14.0),
                  titlePositionPercentageOffset: 1.2),
              PieChartSectionData(
                  value: 15,
                  color: Colors.blue,
                  radius: 100,
                  showTitle: true,
                  title: 'Tution Free',
                  titleStyle: const TextStyle(color: Colors.red, fontSize: 14.0),
                  titlePositionPercentageOffset: 1.2),
              PieChartSectionData(
                  value: 25,
                  color: Colors.orange,
                  radius: 100,
                  showTitle: true,
                  title: 'Travel',
                  titleStyle: const TextStyle(color: Colors.red, fontSize: 14.0),
                  titlePositionPercentageOffset: 1.2)
            ]),
        swapAnimationCurve: Curves.slowMiddle,
        swapAnimationDuration: const Duration(
          seconds: 5,
        ),
      ),
    );
  }
}
