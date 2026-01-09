import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class MyBarChart extends StatelessWidget {
  const MyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: AspectRatio(
        aspectRatio: 1.6, // Ensures the chart doesn't try to expand infinitely
        child: BarChart(
          BarChartData(
            borderData: FlBorderData(show: false),
            alignment: BarChartAlignment.spaceBetween,
            gridData: const FlGridData(
              show: false),
            maxY: 20, // Define the max Y value for scaling

          
          ),
        ),
      ),
    );
  }

}