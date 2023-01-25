import 'package:flutter/material.dart';
class ContainerRectangle extends StatelessWidget {
  const ContainerRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      margin: EdgeInsets.only(right: 20),
      width: 70,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.rectangle,
      ),
    );
  }
}