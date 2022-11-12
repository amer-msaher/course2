import 'dart:ui';

import 'package:course2/shared/app_colors.dart';
import 'package:flutter/material.dart';

class SideBar extends StatefulWidget {
  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: AppColor.bgSideMenu,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 25),
              child: Text(
                "MAIN WEB",
                style: TextStyle(
                    color: AppColor.mainColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            DrawerList(
                title: "Dashboard",
                 icon: "assets/menu_home.png",
                 press: () {}),
            DrawerList(
                title: "Recruitment",
                icon: "assets/menu_recruitment.png",
                press: () {}),
            DrawerList(
                title: "Onbording",
                icon: "assets/menu_onboarding.png",
                press: () {}),
            DrawerList(
                title: "Reports", icon: "assets/menu_report.png", press: () {}),
            DrawerList(
                title: "Calender",
                icon: "assets/menu_calendar.png",
                press: () {}),
            DrawerList(
                title: "Settings",
                icon: "assets/menu_settings.png",
                press: () {}),
            Spacer(),
            Image.asset("assets/sidebar_image.png")
          ],
        ),
      ),
    );
  }
}

class DrawerList extends StatelessWidget {
  final String title, icon;
  final VoidCallback press;

  const DrawerList(
      {super.key,
      required this.title,
      required this.icon,
      required this.press});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0.0,
      leading: Image.asset(
        icon,
        color: AppColor.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: AppColor.white),
      ),
      onTap: press,
    );
  }
}
