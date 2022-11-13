// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:cfc/companyProfile/style/colors.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../HomeScreen/responsive.dart';
import 'components/bar_chart_component.dart';
import 'components/components.dart';
import 'components/history_table.dart';
import 'config/size_config.dart';
import 'style/style.dart';

class Dashboard extends StatelessWidget {
  var company;
  Dashboard({required this.company});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    GlobalKey<ScaffoldState> _drawerKey = GlobalKey();
    SizeConfig().init(context);
    return Scaffold(
      appBar: !Responsive.isDesktop(context)
          ? AppBar(
              elevation: 0,
              backgroundColor: AppColors.white,
              leading: IconButton(
                  onPressed: () {
                    _drawerKey.currentState!.openDrawer();
                  },
                  icon: const Icon(
                    Icons.menu,
                    color: AppColors.black,
                  )),
              actions: const [AppBarActionItem()],
            )
          : const PreferredSize(
              child: SizedBox(),
              preferredSize: Size.zero,
            ),
      body: Container(
        color: Color.fromARGB(150, 210, 180, 140),
        child: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 10,
                child: SizedBox(
                  height: SizeConfig.screenHeight,
                  child: SingleChildScrollView(
                    padding:
                        EdgeInsets.all(Responsive.isDesktop(context) ? 30 : 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        DashboardHeader(
                          company: company,
                        ),
                        SizedBox(
                          height: Responsive.isDesktop(context)
                              ? SizeConfig.blockSizeVertical! * 5
                              : SizeConfig.blockSizeVertical! * 3,
                        ),
                        SizedBox(
                          width: SizeConfig.screenWidth,
                          child: Wrap(
                            runSpacing: 20,
                            spacing: 20,
                            alignment: WrapAlignment.spaceBetween,
                            children: [
                              // ...List.generate(company.tags.length, (index) => null)
                              for (var val in company.tags) ...[
                                InfoCard(
                                  icon: 'images/credit-card.svg',
                                  label: val,
                                  amount: '\$1200',
                                )
                              ]
                            ],
                          ),
                        ),
                        SizedBox(
                          height: Responsive.isDesktop(context)
                              ? SizeConfig.blockSizeVertical! * 4
                              : SizeConfig.blockSizeVertical! * 2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // PrimaryText(
                                //   text: 'Balance',
                                //   size: Responsive.isDesktop(context) ? 16 : 14,
                                //   color: AppColors.secondary,
                                // ),
                                PrimaryText(
                                  text: 'Stats',
                                  size: Responsive.isDesktop(context) ? 30 : 22,
                                  fontWeight: FontWeight.w800,
                                ),
                              ],
                            ),
                            PrimaryText(
                              text: 'Past 30 Days',
                              size: Responsive.isDesktop(context) ? 16 : 14,
                              color: AppColors.secondary,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(right: ((2 * size.width / 3) / 2)-125),
                                  child: PrimaryText(
                                    
                                    text: 'Impact:',
                                    size: Responsive.isDesktop(context) ? 30 : 22,
                                    fontWeight: FontWeight.w200,
                                  ),
                                ),
                                SizedBox(
                                  height: SizeConfig.blockSizeVertical! * 3,
                                ),
                                SizedBox(
                                  height: 180,
                                  width: (2 * size.width / 3) / 2,
                                  child: BarChartComponent(diversity: [
                                    company.environment,
                                    company.social,
                                    company.gonver
                                  ]),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: Responsive.isDesktop(context)
                              ? SizeConfig.blockSizeVertical! * 5
                              : SizeConfig.blockSizeVertical! * 2,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            PrimaryText(
                              text: 'History',
                              size: 30.0,
                              fontWeight: FontWeight.w800,
                            ),
                            PrimaryText(
                              text: 'Transaction of past 6 months',
                              size: 16,
                              color: AppColors.secondary,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: SizeConfig.blockSizeVertical! * 5,
                        ),
                        const HistoryTable(),
                        if (!Responsive.isDesktop(context))
                          const PaymentsDetailList()
                      ],
                    ),
                  ),
                ),
              ),
              if (Responsive.isDesktop(context))
                Expanded(
                  flex: 4,
                  child: Container(
                    height: SizeConfig.screenHeight,
                    color: AppColors.secondaryBg,
                    child: SingleChildScrollView(
                      padding: const EdgeInsets.all(30),
                      child: Column(
                        children: const [
                          AppBarActionItem(),
                          PaymentsDetailList(),
                        ],
                      ),
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
