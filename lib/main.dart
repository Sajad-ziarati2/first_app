import 'package:first_app/color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: Testclass(
          Color.fromARGB(168, 369, 90, 596),
          Color.fromARGB(103, 145, 94, 255),
        ),
      ),
    ),
  );
}
