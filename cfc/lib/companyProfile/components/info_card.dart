// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../HomeScreen/responsive.dart';
import '../config/size_config.dart';
import '../style/colors.dart';
import '../style/style.dart';

class InfoCard extends StatelessWidget {
  final String? icon;
  var label;
  final String? amount;
  InfoCard({required this.icon, required this.label, required this.amount}) {
     if (label == "AA") label = 'African-American';
    else if (label == "H") label = "Hispanic";
    else if (label == "ENV") label = "Environment";
    else if (label == "LGBT") label = "LGBTQ";
    else if (label == "GE") label = "Gender Equality";
    else if (label == "EDU") label = "Underprivilaged Education";
    else if (label == "V") label = "Veteran supporting";
    else if (label == "CANC") label = "cancer research";
    else if (label == "EJ") label = "equality and justice";
    else if (label == "NP") label = "non-profit";
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints:
          BoxConstraints(minWidth: Responsive.isDesktop(context) ? 200.0 : 140),
      padding: EdgeInsets.fromLTRB(
          20.0, 20.0, Responsive.isDesktop(context) ? 40 : 10, 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // SvgPicture.asset(
          //   icon!,
          //   width: Responsive.isDesktop(context) ? 35 : 28,
          // ),
          // SizedBox(
          //   height: SizeConfig.blockSizeHorizontal! * 2,
          // ),
          PrimaryText(
            text: label!,
            size: Responsive.isDesktop(context) ? 16 : 14,
            color: AppColors.secondary,
          ),
          // SizedBox(
          //   height: SizeConfig.blockSizeHorizontal! * 1,
          // ),
          // PrimaryText(
          //   text: amount!,
          //   size: Responsive.isDesktop(context) ? 18 : 16,
          //   fontWeight: FontWeight.w800,
          // )
        ],
      ),
    );
  }
}
