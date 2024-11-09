import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Column01 extends StatelessWidget {
  const Column01({super.key});

  @override
  Widget build(BuildContext context) {
    var blueColor = Color(0xff369fff);

    return Container(
      width: 240,
      padding: EdgeInsets.all(40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 4,
            ),
            Image.asset("assets/logo.png"),
            SizedBox(
              height: 128,
            ),
            buildMenuRow(title: "Overview", menu: "assets/Home.png"),
            buildMenuRow(title: "Couese", menu: "assets/Category.png"),
            buildMenuRow(title: "Rsources", menu: "assets/Folder.png"),
            buildMenuRow(title: "Mrssage", menu: "assets/Chat.png"),
            buildMenuRow(title: "Settings", menu: "assets/Setting.png"),
            SizedBox(
              height: 100,
            ),
            Image.asset("assets/img01.png"),
            SizedBox(
              height: 100,
            ),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xffebf6ff),
                  borderRadius: BorderRadius.circular(18)),
              child: Column(
                children: [
                  Text("Upgrade your plan"),
                  Row(
                    children: [
                      Text("Go to PRO"),
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: blueColor)),
                          child: Icon(CupertinoIcons.chevron_right_2))
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget buildMenuRow({required String menu, required String title}) {
    return Container(
      margin: EdgeInsets.only(bottom: 40),
      child: Row(
        children: [
          Image.asset(
            menu,
            height: 24,
            width: 24,
            color: Color(0xffbdbdbd),
          ),
          SizedBox(
            width: 31,
          ),
          Text(
            title,
            style: TextStyle(
                color: Color(0xffbdbdbd),
                fontWeight: FontWeight.w500,
                fontSize: 14),
          )
        ],
      ),
    );
  }
}
