import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Column02 extends StatelessWidget {
  const Column02({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(48),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello BRUNO, welcome back!",
                textAlign: TextAlign.start,
                style: TextStyle(
                    color: Color(0xff369FFF),
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
              ),
              Row(
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "My Courses",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "view all",
                    style: TextStyle(
                        color: Color(0xff369FFF),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Container(
                    width: 200,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        // Light grey fill color
                        borderRadius:
                            BorderRadius.circular(20), // Rounded corners
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          hintText: 'Search...',
                          hintStyle: TextStyle(color: Colors.grey),
                          // Light grey hint text
                          filled: true,
                          fillColor: Colors.transparent,
                          // Same fill color
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide.none, // No visible border
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide
                                .none, // No visible border when enabled
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: BorderSide
                                .none, // No visible border when focused
                          ),
                        ),
                        style: TextStyle(color: Colors.black), // Text color
                      ),
                    ),
                  )

                  // TextFormField()
                ],
              ),
              Row(
                children: [
                  buildCourseCard(
                      image: "assets/Group1.png",
                      language: "French",
                      lessons: "25 lessons",
                      progressColor: Colors.blue,
                      percentage: "75 %"),
                  SizedBox(
                    width: 30,
                  ),
                  buildCourseCard(
                      image: "assets/Group2.png",
                      language: "Portugese",
                      progressColor: Colors.orange,
                      lessons: "25 lessons",
                      percentage: "50 %"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  buildCourseCard(
                      image: "assets/Group3.png",
                      language: "Italian",
                      progressColor: Colors.green,
                      lessons: "25 lessons",
                      percentage: "25 %"),
                  SizedBox(
                    width: 30,
                  ),
                  buildCourseCard(
                      image: "assets/Group4.png",
                      progressColor: Colors.yellow,
                      language: "German",
                      lessons: "25 lessons",
                      percentage: "75 %"),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(children: [
                Text(
                  "Planning ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "view all",
                  style: TextStyle(
                      color: Color(0xff369FFF),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Icon(Icons.calendar_month),
                SizedBox(
                  width: 16,
                ),
                Text(
                  "20 March 2020",
                  style: TextStyle(
                      color: Color(0xff369FFF),
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )
              ]),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Column(
                    children: [
                      buildPlanningCard(),
                      buildPlanningCard(),
                      buildPlanningCard(),
                      buildPlanningCard(),
                      buildPlanningCard(),
                    ],
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    children: [
                      buildPlanningCard(),
                      buildPlanningCard(),
                      buildPlanningCard(),
                      buildPlanningCard(),
                      buildPlanningCard(),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Container buildPlanningCard() {
    return Container(
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.only(bottom: 25),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          // color: Color(0xffe30d0d)
          color: Color(0xfff7f7f7)),
      child: Row(
        children: [
          Image.asset(
            "assets/speaker.png",
            height: 50,
            width: 50,
          ),
          SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Listening - Intermediate Topic 1",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "03:00 PM - 04:00 PM",
                style: TextStyle(
                    color: Color(0xffbdbdbd),
                    fontSize: 12,
                    fontWeight: FontWeight.w400),
              ),
            ],
          ),
          SizedBox(
            width: 23,
          ),
          Icon(
            Icons.more_vert,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget buildCourseCard({
    required String image,
    required String language,
    required String lessons,
    required String percentage,
    required Color progressColor,
  }) {
    return Container(
      height: 150,
      width: 300,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        // color: Colors.red, // Background color (appears if image fails to load)
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover, // Ensures the image covers the container entirely
        ),
        borderRadius: BorderRadius.circular(20), // Rounded corners
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            language,
            style: TextStyle(
                fontWeight: FontWeight.w700, fontSize: 20, color: Colors.white),
          ),
          Text(
            lessons,
            style: TextStyle(
                fontWeight: FontWeight.w500, fontSize: 12, color: Colors.white),
          ),
          SizedBox(
            height: 20,
          ),
          SimpleCircularProgressBar(
            backStrokeWidth: 4,
            progressStrokeWidth: 5,
            animationDuration: 0,
            size: 52,
            maxValue: 100,
            progressColors: [progressColor],
            backColor: Colors.white,
            mergeMode: true,
            valueNotifier: ValueNotifier(
              (double.parse(75.toString())),
            ),
            onGetText: (value) {
              return Text(
                percentage,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
