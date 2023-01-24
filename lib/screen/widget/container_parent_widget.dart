import 'package:flutter/material.dart';

import '../../constant/constant.dart';
class ContainerParentWidget extends StatelessWidget {
  String title;

  ContainerParentWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 55,
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 15),
      decoration: BoxDecoration(

        color: mainColor,  ),
      child: Text(title,style: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),),
    );
  }
}
