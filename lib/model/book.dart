import 'package:flutter/material.dart';

class Book {
  final int id;
  final String title;
  final String publisher;
  final String imgUrl;
  final String description;
  final Color bgColor;

  Book({
    required this.id,
    required this.title,
    required this.publisher,
    required this.imgUrl,
    required this.description,
    required this.bgColor,
  });
}
