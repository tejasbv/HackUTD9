import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../components/app_bar/components/header.dart';
import '../../controllers/MenuController.dart';
import '../main/components/side_menu.dart';

class ContactUs extends StatelessWidget {
   ContactUs({Key? key}) : super(key: key);
   final MenuController _controller = Get.put(MenuController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _controller.scaffoldkey,
      drawer: SideMenu(),
      body: Column(
        children: [
          Header(),
        ],
      ),
    );
  }
}
