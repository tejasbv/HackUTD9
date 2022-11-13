// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';
import 'sidebar_container.dart';

class Search extends StatelessWidget {
  var searchVal;
   Search({
    Key? key,
    required this.searchVal
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Search",
      child: TextField(
        onChanged: (value) {
          searchVal(value);
        },
        decoration: InputDecoration(
          hintText: "Type Here ...",
          suffixIcon: Padding(
            padding: const EdgeInsets.all(kDefaultPadding / 2),
            child: SvgPicture.asset("cons/feather_search.svg"),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(kDefaultPadding / 2),
            ),
            borderSide: BorderSide(color: Color(0xFFCCCCCC)),
          ),
        ),
      ),
    );
  }
}
