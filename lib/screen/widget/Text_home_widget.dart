import 'package:flutter/material.dart';
class TextHomeWidget extends StatelessWidget {
  String title;


  TextHomeWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 25,
      ),

    );
  }
}