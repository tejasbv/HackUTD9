import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'sidebar_container.dart';

class Categories extends StatefulWidget {
  var press;
  Categories({Key? key, required this.press}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState(press: press);
}

class _CategoriesState extends State<Categories> {
  var press;
  _CategoriesState({required this.press});
  var selected = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];
  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Category(
            title: 'African-American',
            numOfItems: 6,
            press: () {
              setState(() {
                selected[0] = !selected[0];
              });
              press(selected);
            },
            selected: selected[0],
          ),
          Category(
            title: 'Hispanic',
            numOfItems: 6,
            press: () {
              setState(() {
                selected[1] = !selected[1];
              });
              press(selected);
            },
            selected: selected[1],
          ),
          Category(
            title: 'Environment',
            numOfItems: 6,
            press: () {
              setState(() {
                selected[2] = !selected[2];
              });
              press(selected);
            },
            selected: selected[2],
          ),
          Category(
            title: 'LGBTQ',
            numOfItems: 5,
            press: () {
              setState(() {
                selected[3] = !selected[3];
              });
              press(selected);
            },
            selected: selected[3],
          ),
          Category(
            title: 'Gender Equality',
            numOfItems: 11,
            press: () {
              setState(() {
                selected[4] = !selected[4];
              });
              press(selected);
            },
            selected: selected[4],
          ),
          Category(
            title: 'Underprivilaged Education',
            numOfItems: 5,
            press: () {
              setState(() {
                selected[5] = !selected[5];
              });
              press(selected);
            },
            selected: selected[5],
          ),
          Category(
            title: 'Veteran supporting',
            numOfItems: 4,
            press: () {
              setState(() {
                selected[6] = !selected[6];
              });
              press(selected);
            },
            selected: selected[6],
          ),
          Category(
            title: 'cancer research',
            numOfItems: 1,
            press: () {
              setState(() {
                selected[7] = !selected[7];
              });
              press(selected);
            },
            selected: selected[7],
          ),
          Category(
            title: 'equality and justice',
            numOfItems: 4,
            press: () {
              setState(() {
                selected[8] = !selected[8];
              });
              press(selected);
            },
            selected: selected[8],
          ),
          Category(
            title: 'non-profit',
            numOfItems: 3,
            press: () {
              setState(() {
                selected[9] = !selected[9];
              });
              press(selected);
            },
            selected: selected[9],
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;
  var selected;
  Category({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.press,
    required this.selected,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
      child: TextButton(
        onPressed: () {
          press();
        },
        child: Container(
          padding: EdgeInsets.only(top: 10, bottom: 10, left: 10),
          width: double.infinity,
          color: selected ? Colors.grey[300] : Colors.transparent,
          child: Text.rich(
            textAlign: TextAlign.left,
            TextSpan(
              text: title,
              style: TextStyle(color: kDarkBlackColor),
              children: [
                TextSpan(
                  text: " ($numOfItems)",
                  style: TextStyle(color: kBodyTextColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
