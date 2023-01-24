import 'package:flutter/material.dart';
class ContainerRectangle extends StatelessWidget {
  const ContainerRectangle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.black,
        shape: BoxShape.rectangle,
      ),
    );
  }
}