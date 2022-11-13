import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../../HomeScreen/responsive.dart';
import '../config/size_config.dart';
import '../data.dart';
import '../style/colors.dart';
import '../style/style.dart';

class HistoryTable extends StatelessWidget {
  var data;
  HistoryTable({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection:
          Responsive.isDesktop(context) ? Axis.vertical : Axis.horizontal,
      child: Container(
        child: Column(children: [
          for (var val in data) ...[
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(
                      top: 10,
                      bottom: 10,
                      left: Responsive.isDesktop(context) ? 20 : 0),
                  child: CircleAvatar(
                    radius: Responsive.isDesktop(context) ? 28 : 14,
                    backgroundImage: AssetImage("icons/user.png"),
                    // backgroundImage:
                    //     NetworkImage(transactionHistory[index]['avatar']!),
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                Container(
                  width: 250,
                  child: PrimaryText(
                    text: val['name'],
                    size: Responsive.isDesktop(context) ? 20 : 12,
                    color: Color.fromARGB(255, 132, 130, 130),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Container(
                  width: 75,
                  child: PrimaryText(
                    text: val['role']!,
                    size: Responsive.isDesktop(context) ? 20 : 12,
                    color: Color.fromARGB(255, 132, 130, 130),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                PrimaryText(
                  text: "https://www.linkedin.com/in/" + val['name']!,
                  size: Responsive.isDesktop(context) ? 20 : 12,
                  color: Colors.blue,
                ),
              ],
            ),
            Divider(),
          ]
        ]),
      ),
      // child: SizedBox(
      //   width:Responsive.isDesktop(context) ? double.infinity : SizeConfig.screenWidth,
      //   child: Table(
      //     defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      //     children: List.generate(
      //       transactionHistory.length,
      //       (index) => TableRow(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.circular(10),
      //         ),
      //         children: [
      //           Container(
      //             alignment: Alignment.centerLeft,
      //             padding:  EdgeInsets.only(top: 10, bottom: 10, left:Responsive.isDesktop(context) ? 20 : 0),
      //             child: CircleAvatar(
      //               radius:Responsive.isDesktop(context) ? 17 : 14,
      //               // backgroundImage:
      //               //     NetworkImage(transactionHistory[index]['avatar']!),
      //             ),
      //           ),
      //           PrimaryText(
      //             text: data[index]['name']!,
      //             size:Responsive.isDesktop(context) ? 16 : 12,
      //             color: AppColors.secondary,
      //           ),

      //           PrimaryText(
      //             text: data[index]['role']!,
      //             size: Responsive.isDesktop(context) ? 16 : 12,
      //             color: AppColors.secondary,
      //           ),
      //         ],
      //       ),
      //     ),
      //   ),
      // ),
    );
  }
}
