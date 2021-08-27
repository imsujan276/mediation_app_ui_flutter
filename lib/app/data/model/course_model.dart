import 'package:flutter/cupertino.dart';

class Course {
  final Color background;
  final String title;
  final String type;
  final String duration;
  final Color btnColor;
  final Color textColor;
  final String image;
  final VoidCallback onTap;
  Course({
    required this.background,
    required this.title,
    required this.type,
    required this.duration,
    required this.btnColor,
    required this.textColor,
    required this.image,
    required this.onTap,
  });
}
