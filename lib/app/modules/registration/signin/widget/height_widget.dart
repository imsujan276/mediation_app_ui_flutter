import 'package:flutter/material.dart';
import 'package:meditation/app/constant/controller_service.dart';

///Weigt height for get some space in column
class HeightWidget extends StatelessWidget {
  final double h;
  const HeightWidget(
    this.h, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: appService.sheight * h);
  }
}

///widget width for geting some space in row
class WidthWidget extends StatelessWidget {
  final double w;
  const WidthWidget(
    this.w, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: appService.sheight * w);
  }
}
