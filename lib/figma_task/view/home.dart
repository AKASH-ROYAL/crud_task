import 'package:figma_task/task/view/Column3.dart';
import 'package:figma_task/task/view/column1.dart';
import 'package:flutter/material.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

import 'column2.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    var blueColor = Color(0xff369fff);
    return Material(
      child: Row(
        children: [
          Column01(),
          VerticalDivider(
            color: Colors.grey,
            width: 2,
          ),
          Column02(),
          VerticalDivider(
            color: Colors.grey,
            width: 2,
          ),
          Column03()
        ],
      ),
    );
  }
}
