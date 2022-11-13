// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cfc/companyProfile/components/payment_list_tile.dart';
import 'package:cfc/companyProfile/data.dart';
import 'package:flutter/material.dart';

import '../config/size_config.dart';
import '../style/colors.dart';
import '../style/style.dart';


class PaymentsDetailList extends StatelessWidget {
  const PaymentsDetailList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            boxShadow:  [
              BoxShadow(
                offset: Offset(10, 15),
                blurRadius: 15,
                color: AppColors.iconGray,
              ),
            ],
          ),
          child: Image.asset('images/card.png'),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            PrimaryText(
              text: 'Recent Activities',
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: '27 Apr, 2022',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(
            recentActivities.length,
            (index) =>  PaymentListTile(
              icon: recentActivities[index]["icon"],
              amount:recentActivities[index]["amount"],
              label: recentActivities[index]["label"],
            ),
          ),
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 5,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            PrimaryText(
              text: 'Upcoming Payments',
              size: 18,
              fontWeight: FontWeight.w800,
            ),
            PrimaryText(
              text: '12 May, 2022',
              size: 14,
              fontWeight: FontWeight.w400,
              color: AppColors.secondary,
            ),
          ],
        ),
        SizedBox(
          height: SizeConfig.blockSizeVertical! * 2,
        ),
        Column(
          children: List.generate(
            upcomingPayments.length,
            (index) =>  PaymentListTile(
              icon: upcomingPayments[index]["icon"],
              amount:upcomingPayments[index]["amount"],
              label: upcomingPayments[index]["label"],
            ),
          ),
        ),
      ],
    );
  }
}
