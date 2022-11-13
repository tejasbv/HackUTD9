// ignore_for_file: prefer_const_constructors

import 'package:cfc/HomeScreen/models/Blog.dart';
import 'package:flutter/material.dart';

import '../../HomeScreen/constants.dart';
import '../../HomeScreen/responsive.dart';
import '../style/colors.dart';
import '../style/style.dart';

class DashboardHeader extends StatelessWidget {
  var company;
  DashboardHeader({required this.company});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Combl",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Santana"),
                  ),
                  Text(
                    ".",
                    style: TextStyle(
                      color: Colors.green[700],
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                child: Text(
                  company.name,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: Responsive.isDesktop(context) ? 32 : 24,
                    fontFamily: "Raleway",
                    color: kDarkBlackColor,
                    height: 1.3,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Container(
                width: size.width/3*2,
                child: PrimaryText(
                  text: company.desc,
                  size: 16,
                  color: AppColors.secondary,
                ),
              ),
            ],
          ),
          const Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
