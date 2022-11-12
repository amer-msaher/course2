import 'package:course2/shared/app_colors.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class HeadBar extends StatefulWidget {
  @override
  State<HeadBar> createState() => _HeadBarState();
}

class _HeadBarState extends State<HeadBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Row(
        children: [
          Text(
            "Dashboard",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Row(
            children: [
              navIcon(icon: Icons.search),
              navIcon(icon: Icons.send),
              navIcon(icon: Icons.notifications),
            ],
          )
        ],
      ),
    );
  }

  Widget navIcon({icon}) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(
        icon,
        color: AppColor.black,
      ),
    );
  }
}
