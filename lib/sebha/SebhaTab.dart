// sebha/SebhaTab.dart

import 'package:flutter/material.dart';
import 'package:islamic_application/style.dart';

class SebhaTab extends StatefulWidget {
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  double turns = 0.0;
  int counter = 0;
  int i = 0;
  List<String> tasbehWordsList = [
    "سبحان الله",
    "الحمد لله",
    " لا إله إلا الله"
  ];
  String tasbehWord = "سبحان الله";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
                width: double.infinity,

                // color: Colors.amber,
                child: AnimatedRotation(
                    turns: turns,
                    duration: Duration(seconds: 1),
                    child: Image.asset("assets/images/body of seb7a.png"))),
            Positioned(
              left: 200,
              bottom: 300,
              child: Container(
                // color: Colors.red,
                  child: Image.asset("assets/images/head of seb7a.png")),
            ),
          ],
        ),
        Text(
          "عدد التسبيحات",
          style: Theme
              .of(context)
              .textTheme
              .bodySmall,
        ),
        Container(
          padding: EdgeInsets.all(20),
          margin: EdgeInsets.only(top: 10, bottom: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColor.primaryLightColor,
          ),
          child: Text(counter.toString()),
        ),
        InkWell(
          onTap: () {
            setState(() {
              turns += 1 / 33;
              counter++;
              if (counter == 33) {
                i++;
                tasbehWord = tasbehWordsList[i];
              } else if (counter == 66) {
                i++;
                tasbehWord = tasbehWordsList[i];
              } else if (counter == 99) {
                i++;
                tasbehWord = tasbehWordsList[i];
              }

              /// if counter-33=0 , tasbehWord = tasbehWordsList[i] ,  i++ ,if i==array.lenth i=0;
            });
          },
          child: Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: AppColor.primaryLightColor,
            ),
            child: Text(
              tasbehWord,
              style: TextStyle(color: AppColor.whiteColor),
            ),
          ),
        ),
      ],
    );
  }
}
