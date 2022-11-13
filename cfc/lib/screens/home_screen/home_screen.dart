// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:cfc/components/app_bar/custom_navbar.dart';
import 'package:flutter/material.dart';

import '../../components/app_bar/components/app_drawer.dart';
import '../../constants.dart';
import 'components/hero_content.dart';


class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // final mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const AppDrawer(),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: kBackgroundColor,
        child: SafeArea(
          child: Column(
            children: [
              const CustomNavbar(),
              Expanded(child: HeroContent()),
            ],
          ),
        ),
      ),
    );
  }
}
