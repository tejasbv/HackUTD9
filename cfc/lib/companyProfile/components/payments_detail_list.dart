// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cfc/companyProfile/components/payment_list_tile.dart';
import 'package:cfc/companyProfile/data.dart';
import 'package:flutter/material.dart';

import '../config/size_config.dart';
import '../style/colors.dart';
import '../style/style.dart';

class PaymentsDetailList extends StatelessWidget {
  var data;
  PaymentsDetailList({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    //print("here: " + data.toString());
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Container(
          width: size.width / 3 - 100,
          height: 300,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
                image: AssetImage(
                  data.image,
                ),
                fit: BoxFit.cover),
            boxShadow: [
              BoxShadow(
                offset: Offset(10, 15),
                blurRadius: 15,
                color: AppColors.iconGray,
              ),
            ],
          ),
          //child: Image.asset(data.image),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PrimaryText(
              text: 'Tags',
              size: 30,
              fontWeight: FontWeight.w800,
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(
            data.tags.length,
            (index) => PaymentListTile(
              icon: recentActivities[index]["icon"],
              amount: recentActivities[index]["amount"],
              label: getLabel(index),
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
      ],
    );
  }
  
  getLabel(int index) {
    var label = data.tags[index];
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

    return label;
  }
}
