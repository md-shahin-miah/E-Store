import 'package:flutter/material.dart';

const Color blue = Color(0xff3ba2d5);
const Color mediumBlue = Color(0xff86d0f6);
const Color darkYellow = Color(0xff036fa4);
const Color transparentYellow = Color.fromRGBO(253, 184, 70, 0.7);
const Color transparentBlue = Color.fromRGBO(255, 62, 210, 0.5);
const Color darkGrey = Color(0xff202020);

const LinearGradient mainButton = LinearGradient(colors: [
  Color.fromRGBO(255, 76, 0, 1.0),
  Color.fromRGBO(171, 51, 0, 1.0),
  Color.fromRGBO(134, 68, 38, 1.0),
], begin: FractionalOffset.topCenter, end: FractionalOffset.bottomCenter);

const List<BoxShadow> shadow = [
  BoxShadow(color: Colors.black12, offset: Offset(0, 3), blurRadius: 6)
];

screenAwareSize(int size, BuildContext context) {
  double baseHeight = 640.0;
  return size * MediaQuery.of(context).size.height / baseHeight;
}