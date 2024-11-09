import 'package:flutter/material.dart';

class Column03 extends StatelessWidget {
  const Column03({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 470,
      padding: EdgeInsets.symmetric(horizontal: 40, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Stack(
                clipBehavior: Clip.none,
                // Allows overflow for positioning the dot outside the icon
                children: [
                  Icon(
                    Icons.notifications_none_outlined,
                    // Notification icon
                    size: 30.0, // Adjust size as needed
                    color: Colors.grey, // Icon color
                  ),
                  Positioned(
                    right: -2, // Position the dot to the right
                    top: -2, // Position the dot at the top
                    child: Container(
                      width: 10, // Dot size
                      height: 10,
                      decoration: BoxDecoration(
                        color: Colors.red, // Red color for the dot
                        shape: BoxShape.circle, // Circular shape for the dot
                      ),
                    ),
                  ),
                ],
              ),
              Spacer(),
              Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color(0xffebf6ff),
                      borderRadius: BorderRadius.circular(18)),
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    NetworkImage("https://i.pravatar.cc/300")),
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Bruno Fernandes",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w600),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Basic Plan",
                            style: TextStyle(
                                color: Color(0xff369fff),
                                fontSize: 12,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined)
                    ],
                  ))
            ],
          ),
          Text(
            "Statistics",
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              buildStatisticsCard(title: "Courses Edited", count: "02"),
              SizedBox(
                width: 30,
              ),
              buildStatisticsCard(title: "Total Points Gained", count: "250"),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              buildStatisticsCard(title: "Courses In Progress", count: "03"),
              SizedBox(
                width: 30,
              ),
              buildStatisticsCard(title: "Tasks Finished", count: "05"),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildStatisticsCard({required String title, required String count}) {
    return Container(
      height: 180,
      width: 180,
      decoration: BoxDecoration(
          color: Color(0xffebf6ff), borderRadius: BorderRadius.circular(18)),
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 25),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
                color: Color(0xff8EA3B7),
                fontSize: 18,
                fontWeight: FontWeight.w500),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Container(
                width: 4,
                height: 30,
                decoration: BoxDecoration(
                    color: Color(0xff369FFF),
                    borderRadius: BorderRadius.circular(20)),
              ),
              Spacer(),
              Text(
                count,
                style: TextStyle(
                    color: Color(0xff369FFF),
                    fontSize: 40,
                    fontWeight: FontWeight.w700),
              )
            ],
          )
        ],
      ),
    );
  }
}
