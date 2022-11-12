import 'package:course2/shared/app_colors.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';

class TableOfEmpData extends StatefulWidget {
  @override
  State<TableOfEmpData> createState() => _TableOfEmpDataState();
}

class _TableOfEmpDataState extends State<TableOfEmpData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Emplyees Data",
                style: TextStyle(
                  color: AppColor.black,
                  fontSize: 22,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColor.mainColor,
                    borderRadius: BorderRadius.circular(100)),
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: Text(
                  "Go To Table",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColor.black),
                ),
              )
            ],
          ),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
          ),
          Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              children: [
                //table head
                TableRow(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom:
                                BorderSide(color: Colors.grey, width: 0.5))),
                    children: [
                      tableHeader("Name"),
                      tableHeader("Position"),
                      tableHeader("status"),
                      tableHeader("Sign"),
                    ]),
                //table data
                tableRow(context,
                    name: "Amer",
                    image: "assets/user2.jpg",
                    position: "programmer",
                    status: "Active"),

                tableRow(context,
                    name: "nermin",
                    image: "assets/user1.jpg",
                    position: "programmer",
                    status: "Active"),
                tableRow(context,
                    name: "ahmed",
                    image: "assets/user3.jpg",
                    position: "programmer",
                    status: "Active"),
                tableRow(context,
                    name: "Amer",
                    image: "assets/user4.jpg",
                    position: "programmer",
                    status: "Active"),
              ]),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("view 4 from 40"),
                Text(
                  "view All",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  TableRow tableRow(contxet, {name, image, position, status}) {
    return TableRow(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.grey, width: 0.5))),
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(1000),
                  child: Image.asset(
                    image,
                    width: 30,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(name)
              ],
            ),
          ),
          Text(position),
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.mainColor),
                height: 10,
                width: 10,
              ),
              SizedBox(
                width: 10,
              ),
              Text(status),
            ],
          ),
          Image.asset(
            "assets/more.png",
            color: Colors.grey,
            height: 30,
          )
        ]);
  }

  Widget tableHeader(Text) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        Text,
        style: TextStyle(fontWeight: FontWeight.bold, color: AppColor.black),
      ),
    );
  }
}
