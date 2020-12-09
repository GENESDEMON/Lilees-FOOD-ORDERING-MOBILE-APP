import 'package:flutter/material.dart';

class Xwidth extends StatelessWidget {
  final double x;
  const Xwidth(this.x);
  @override
  Widget build(BuildContext context) {
    return SizedBox(width: x);
  }
}

class Yheight extends StatelessWidget {
  final double y;
  const Yheight(this.y);
  @override
  Widget build(BuildContext context) {
    return SizedBox(height: y);
  }
}

double screenHeight(BuildContext context, {double percent = 1}) =>
    MediaQuery.of(context).size.height * percent;

double screenWidth(BuildContext context, {double percent = 1}) =>
    MediaQuery.of(context).size.width * percent;
