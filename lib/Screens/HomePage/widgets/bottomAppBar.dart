import 'package:OrganicBharat/Modals/colorModal/color.dart';
import 'package:OrganicBharat/Screens/HomePage/helperClass/myPinters.dart';
import 'package:flutter/material.dart';

Widget bottomBar(context) {
  return BottomAppBar(
      // clipBehavior: Clip.hardEdge,
      // color: Pallete().themeColor.withOpacity(0.3),
      child: Container(
          color: ColorPallete().color.withOpacity(0.1),
          width: MediaQuery.of(context).size.width,
          height: 80,
          child: Stack(children: [
            CustomPaint(
                size: Size(MediaQuery.of(context).size.width, 80),
                painter: MyPinters()),
            Center(
              heightFactor: 0.6,
              child: FloatingActionButton(
                backgroundColor: ColorPallete().color,
                onPressed: () {},
                child: Icon(Icons.person, size: 30),
                elevation: 0.1,
              ),
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                height: 80,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      retCln(Icons.home, "Home", 1),
                      retCln(Icons.card_membership_sharp, "Subscription", 2),
                      Container(
                          width: MediaQuery.of(context).size.width * 0.20),
                      retCln(Icons.category, "Catagories", 3),
                      retCln(Icons.share, "Share", 4),
                    ]))
          ])));
}

Widget retCln(IconData icon, String txrt, int identifierVal) {
  return Column(
    children: [
      Padding(
        padding: EdgeInsets.only(top: 13),
        child: ClipOval(
          child: Material(
            color: Colors.white, // button color
            child: InkWell(
              splashColor:
                  ColorPallete().color.withOpacity(0.2), // inkwell color
              child: SizedBox(
                  width: 40,
                  height: 40,
                  child: Icon(
                    icon,
                    color: Colors.grey[400],
                  )),
              onTap: () {},
            ),
          ),
        ),
      ),
      Text(
        txrt,
        style: TextStyle(color: Colors.grey[400]),
      )
    ],
  );
}
