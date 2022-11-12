import 'package:course2/shared/app_colors.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class Notice extends StatefulWidget {
  @override
  State<Notice> createState() => _NoticeState();
}

class _NoticeState extends State<Notice> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.mainColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text.rich(
                TextSpan(
                    style: TextStyle(fontSize: 16, color: AppColor.black),
                    children: [
                      TextSpan(text: "Hello World"),
                      TextSpan(
                          text: "New Web Site",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                  "sfsfvfbbbkjhkjhkjhkjkjkjb.\kjbkjbkgjfghjhkjhkjkk",
                  style: TextStyle(fontSize: 14, color: AppColor.black)),
              SizedBox(
                height: 10,
              ),
              Text("Read More..",
                  style: TextStyle(
                      fontSize: 14,
                      color: AppColor.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline))
            ],
          ),
          Spacer(),
          Image.asset(
            "assets/disk_image.png",
            height: 80,
          )
        ],
      ),
    );
  }
}
