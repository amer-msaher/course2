import 'package:course2/shared/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:intl/intl.dart';

class Calenderwidget extends StatefulWidget {
  @override
  _CalenderwidgetState createState() => _CalenderwidgetState();
}

class _CalenderwidgetState extends State<Calenderwidget> {
  DateTime _dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "${DateFormat("MMM, yyyy").format(_dateTime)}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month - 1);
                      });
                    },
                    child: Icon(Icons.chevron_left, color: AppColor.black),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        _dateTime =
                            DateTime(_dateTime.year, _dateTime.month + 1);
                      });
                    },
                    child: Icon(Icons.chevron_right, color: AppColor.black),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          TableCalender(
            focusedDay: _dateTime,
            firstDay: DateTime.utc(2009),
            lastDay: DateTime.utc(2050),

            // headerVisible: false,
            // onFormatChanged: (result) {},
            // dayOfWeekStyle: DayOfWeekStyle(
            //     dowTextFormat: (date, local) {
            //       return DateFormat("EEE").format(date).toUpperCase();
            //     },
            //     weekdayStyle: TextStyle(fontWeight: FontWeight.bold),
            //     weekendStyle:
            //         TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
          )
        ],
      ),
    );
  }
}

TableCalender(
    {required DateTime focusedDay,
    required DateTime firstDay,
    required DateTime lastDay}) {}
