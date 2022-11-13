// ignore_for_file: prefer_const_constructors

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PieChartWidget extends StatefulWidget {
  var data;
  PieChartWidget({super.key, required this.data});

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState(data: data);
}

class _PieChartWidgetState extends State<PieChartWidget> {
  var data;
  _PieChartWidgetState({required this.data});
  var touchedIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: PieChart(
        PieChartData(

            pieTouchData: PieTouchData(touchCallback: (pieTouchResponse) {
              setState(() {
                if (pieTouchResponse.touchInput is PieTouchedSection ||
                    pieTouchResponse.touchInput is PieTouchedSection) {
                  touchedIndex = -1;
                } else {
                  touchedIndex =
                      pieTouchResponse.touchedSection?.touchedSectionIndex;
                }
                print(touchedIndex);
              });
            }),
            borderData: FlBorderData(
              show: false,
            ),
            sectionsSpace: 0,
            centerSpaceRadius: 30,
            sections: [
              PieChartSectionData(
                  value: data[0],
                  color: Colors.red,
                  radius: 80,
                  badgeWidget: Text(
                    data[0].toString() + "%",
                    style: TextStyle(color: Colors.white),
                  ),
                  showTitle: touchedIndex == 0 ? true : false,
                  title: "White",
                  titleStyle: TextStyle(color: Color.fromARGB(255, 132, 130, 130)),
                  titlePositionPercentageOffset: 1.5),
              PieChartSectionData(
                  value: data[1],
                  color: Colors.green,
                  radius: 80,
                  badgeWidget: Text(
                    data[1].toString() + "%",
                    style: TextStyle(color: Colors.white),
                  ),
                  showTitle: touchedIndex == 1 ? true : false,
                  title: "African-American",
                  titleStyle: TextStyle(color: Color.fromARGB(255, 132, 130, 130)),
                  titlePositionPercentageOffset: 1.5),
              PieChartSectionData(
                  value: data[2],
                  color: Colors.blue,
                  radius: 80,
                  badgeWidget: Text(
                    data[2].toString() + "%",
                    style: TextStyle(color: Colors.white),
                  ),
                  showTitle: touchedIndex == 2 ? true : false,
                  title: "Asian",
                  titleStyle: TextStyle(color: Color.fromARGB(255, 132, 130, 130)),
                  titlePositionPercentageOffset: 1.5),
              PieChartSectionData(
                  value: data[3],
                  color: Colors.yellow,
                  radius: 80,
                  badgeWidget: Text(
                    data[3].toString() + "%",
                    
                    style: TextStyle(color: Colors.black),
                  ),
                  titleStyle: TextStyle(color: Color.fromARGB(255, 132, 130, 130)),
                  showTitle: touchedIndex == 3 ? true : false,
                  title: "Hispanic",
                  titlePositionPercentageOffset: 1.5),
              PieChartSectionData(
                  value: data[4],
                  color: Colors.purple,
                  radius: 80,
                  badgeWidget: Text(
                    data[4].toString() + "%",
                    style: TextStyle(color: Colors.white),
                  ),
                  showTitle: touchedIndex == 4 ? true : false,
                  title: "Other",
                  titleStyle: TextStyle(color: Color.fromARGB(255, 132, 130, 130)),
                  titlePositionPercentageOffset: 1.25)
            ]),
      ),
    );
  }
}
