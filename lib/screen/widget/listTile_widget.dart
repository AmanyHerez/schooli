import 'package:flutter/material.dart';
import 'package:school/constant/constant.dart';

class ListTileWidget extends StatelessWidget {
  String title;
  IconData icon;

  ListTileWidget({
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title,style: TextStyle(color: Colors.black54),),
      leading: Icon(icon,color: mainColor,),
    );
  }
}
