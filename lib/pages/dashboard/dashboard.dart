import 'package:course2/pages/dashboard/widget/headbar.dart';
import 'package:course2/shared/app_colors.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:course2/pages/dashbord/widget/notice.dart';
import 'package:course2/pages/dashbord/widget/table_of_emp_date.dart';

import 'calender-widget.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: AppColor.bgcolor, borderRadius: BorderRadius.circular(30)),
      child: Column(
        children: [
          HeadBar(),
          Expanded(
              child: SingleChildScrollView(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    child: Column(
                      children: [
                        Notice(),
                        SizedBox(
                          height: 20,
                        ),
                        TableOfEmpData()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Container(
                  child: Column(children: [
                    Calenderwidget(),
                  ]),
                ))
              ],
            ),
          ))
        ],
      ),
    );
  }
}
