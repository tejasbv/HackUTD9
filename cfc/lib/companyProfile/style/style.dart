import 'package:flutter/material.dart';

import 'colors.dart';

class PrimaryText extends StatelessWidget {
  final double size;
  final FontWeight fontWeight;
  final Color color;
  final String text;
  final double height;
  var aling;
   PrimaryText({
    Key? key,
    required this.text,
    this.fontWeight = FontWeight.w400,
    this.color = AppColors.primary,
    this.size = 20,
    this.height = 1.3,
    this.aling = TextAlign.left,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        height: height,
        fontFamily: 'Poppins',
        fontSize: size,
        fontWeight: fontWeight,
      ),
      softWrap: true,
      textAlign: aling,
    );
  }
}
