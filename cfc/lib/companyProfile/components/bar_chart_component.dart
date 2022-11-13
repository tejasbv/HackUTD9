import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../HomeScreen/responsive.dart';
import '../style/colors.dart';


class BarChartComponent extends StatelessWidget {
  var diversity;
   BarChartComponent({required this.diversity}) ;

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        borderData: FlBorderData(show: false),
        alignment: BarChartAlignment.spaceBetween,
        axisTitleData: FlAxisTitleData(leftTitle: AxisTitle(reservedSize: 20)),
        gridData: FlGridData(drawHorizontalLine: true, horizontalInterval: 30),
        titlesData: FlTitlesData(
            leftTitles: SideTitles(
              reservedSize: 30,
              getTextStyles: (value) =>
                   TextStyle(color: Colors.grey, fontSize:Responsive.isDesktop(context) ? 12 : 10),
              showTitles: true,
              getTitles: (value) {
                if (value == 0) {
                  return '0';
                } else if (value == 30) {
                  return '30%';
                } else if (value == 60) {
                  return '60%';
                } else if (value == 90) {
                  return '90%';
                } else {
                  return '';
                }
              },
            ),
            bottomTitles: SideTitles(
                showTitles: true,
                getTextStyles: (value) =>
                    TextStyle(color: Colors.black, fontSize: Responsive.isDesktop(context) ?12 : 10),
                getTitles: (value) {
                  // TextStyle
                  if (value == 0) {
                    return 'Environmental';
                  } else if (value == 1) {
                    return 'social';
                  } else if (value == 2) {
                    return 'Governace';
                  } 
                  else {
                  return '';
                }
                }) // SideTitles
            ),
        barGroups: List.generate(diversity.length, (index) => barGroup(index,diversity[index],context)),
      ),
      swapAnimationDuration: const Duration(milliseconds: 200),
      swapAnimationCurve: Curves.linear,
    );
  }

  BarChartGroupData barGroup(int x, double value,BuildContext context) => BarChartGroupData(
        x: x,
        barRods: [
          BarChartRodData(
            y: value,
            colors: [(Colors.green[700])!],
            width: Responsive.isDesktop( context) ? 40 : 14,
            backDrawRodData: BackgroundBarChartRodData(
                y: 90, show: true, colors: [AppColors.barBg]),
          ),
        ],
      );
}
