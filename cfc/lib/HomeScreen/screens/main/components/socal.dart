// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import '../../../responsive.dart';

class Socal extends StatelessWidget {
  const Socal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (!Responsive.isMobile(context))
          SvgPicture.asset("icons/behance-alt.svg"),
        if (!Responsive.isMobile(context))
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
            child: SvgPicture.asset("icons/feather_dribbble.svg"),
          ),
        if (!Responsive.isMobile(context))
          SvgPicture.asset("icons/feather_twitter.svg"),
        SizedBox(width: kDefaultPadding),
        InkWell(
          onTap: () {},
          
          child: CircleAvatar(
            backgroundColor: Colors.black,
            backgroundImage: AssetImage("images/user_profile_MainScreen.jpeg"),
            radius: 25,
          ),
        ),
      ],
    );
  }
}
