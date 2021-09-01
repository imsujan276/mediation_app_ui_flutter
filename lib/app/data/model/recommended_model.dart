import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class Recommended {
  final Color background;
  final String image;
  final String title;
  final String subtitle;
  final String duration;
  final VoidCallback onTap;
  Recommended({
    required this.background,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.duration,
    required this.onTap,
  });
}
