import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TopicModel {
  final String text;
  final String image;
  final VoidCallback onTap;
  final Color color;
  final int code;

  TopicModel({
    required this.text,
    required this.image,
    required this.onTap,
    required this.color,
    required this.code,
  });
}
