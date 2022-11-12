import 'dart:html';

import 'package:course2/pages/widgets/side_bar_menu.dart';
import 'package:course2/shared/app_colors.dart';
import 'package:flutter/material.dart';
import 'dashboard/dashboard.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.bgSideMenu,
        body: SafeArea(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //side Menu
              Expanded(
                child: SideBar(),
              ),

              //Main Body
              Expanded(
                flex: 4,
                child: Dashboard(),
              ),
            ],
          ),
        ));
  }
}
