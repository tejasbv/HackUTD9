// ignore_for_file: prefer_const_constructors

import 'package:cfc/HomeScreen/controllers/MenuController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../screens/home_screen/home_screen.dart';
import '../../../constants.dart';
import '../../../responsive.dart';
import 'socal.dart';
import 'web_menu.dart';

class Header extends StatelessWidget {
  final MenuController _controller = Get.put(MenuController());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Color.fromARGB(255, 210, 180, 140),
      child: SafeArea(
        child: Column(
          children: [
            Container(
              constraints: BoxConstraints(maxWidth: kMaxWidth),
              padding: EdgeInsets.all(kDefaultPadding),
              child: Column(
                children: [
                  Row(
                    children: [
                      if (!Responsive.isDesktop(context))
                        IconButton(
                          icon: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            _controller.openOrCloseDrawer();
                          },
                        ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LandingScreen()),
                    );
                        },
                        child: Row(
                          children: [
                            Text(
                              "Combl",
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w800,
                                fontFamily: "Santana",
                              ),
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
                      ),
                      Spacer(),
                      if (Responsive.isDesktop(context)) WebMenu(),
                      Spacer(),
                      // Socal
                      Socal(),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding * 2),
                  Text(
                    "Welcome To Your Recommendations",
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: kDefaultPadding),
                    child: Text(
                      "Our mission is to help you find your dream job.\nWe learn more about your values the more you interact with our Engine.\nHappy Hunting!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Raleway',
                        height: 1.5,
                      ),
                    ),
                  ),
                  if (Responsive.isDesktop(context))
                    SizedBox(height: kDefaultPadding),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
