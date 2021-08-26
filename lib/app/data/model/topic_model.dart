import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TopicModel {
  final String text;
  final String image;
  final VoidCallback onTap;
  final Color color;

  TopicModel({
    required this.text,
    required this.image,
    required this.onTap,
    required this.color,
  });
}
