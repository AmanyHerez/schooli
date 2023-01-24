import 'package:flutter/material.dart';
class ContainerCircular extends StatelessWidget {
  const ContainerCircular({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.black,
      ),
    );
  }
}
