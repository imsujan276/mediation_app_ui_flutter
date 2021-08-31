import 'package:flutter/material.dart';

///it will use as background wave
class HalfCicle extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(
        0, size.height - 40); //start path with this if you are making at bottom

    var firstStart = Offset(size.width, 10);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.34, 10);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(size.width + 20, 0);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, 0);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    // var thirdStart = Offset(size.width - (size.width / 8.14), size.height);
    // //third point of quadratic bezier curve
    // var thirdEnd = Offset(size.width + 3, size.height - 3);
    // //fourth point of quadratic bezier curve
    // path.quadraticBezierTo(
    //     thirdStart.dx, thirdStart.dy, thirdEnd.dx, thirdEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
