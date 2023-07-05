import 'dart:math';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class CustomLineChart extends StatelessWidget {
  CustomLineChart({super.key});
  static double kScrollFactor = 30.0;
  // Generate some dummy data for the chart
  // This will be used to draw the red line
  final List<LineChartBarData> lineBarsDataArray = [
    // The indigo line
    LineChartBarData(
      spots: List.generate(20, (index) {
        return FlSpot(index.toDouble(), index * Random().nextDouble());
      }),
      isCurved: true,
      barWidth: 3,
      color: Colors.indigo,
    ),

    // The orange line
    LineChartBarData(
      spots: List.generate(20, (index) {
        return FlSpot(index.toDouble(), index * Random().nextDouble());
      }),
      isCurved: true,
      barWidth: 3,
      color: Colors.orange,
    ),

    // The blue line
    LineChartBarData(
      spots: List.generate(20, (index) {
        return FlSpot(index.toDouble(), index * Random().nextDouble());
      }),
      isCurved: false,
      barWidth: 3,
      color: Colors.blue,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 400),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SizedBox(
          width: calculateWidthDynamically(context),
          child: LineChart(
            LineChartData(
              lineBarsData: lineBarsDataArray,
            ),
          ),
        ),
      ),
    );
  }

  calculateWidthDynamically(context) {
    double minWidth = MediaQuery.of(context).size.width;
    debugPrint('Screen Width : $minWidth');
    int maxSpots = 1;
    for(LineChartBarData barData in lineBarsDataArray){
       maxSpots = barData.spots.length > maxSpots ? barData.spots.length : maxSpots;
    }
    
    debugPrint('Max number of spots : $maxSpots');
    double width = maxSpots * kScrollFactor;
    debugPrint('Avaialable screen width : $minWidth  , calculatedWidth: $width ');
    double desiredWidth = width < minWidth ? minWidth : width;
    return desiredWidth;
  }
  
  // @override
  // Widget build(BuildContext context) {
  //   return Center(
  //     child: LineChart(LineChartData(
  //       lineBarsData: lineBarsDataArray,
  //     )),
  //   );
  // }

}
