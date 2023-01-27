import 'package:flutter/material.dart';

import '../../constant/constant.dart';
class OurServiceWidget extends StatelessWidget {
  String title;


  OurServiceWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 10),
      child: Row(children: [
        Icon(Icons.forward,color: mainColor,),
        Expanded(child: Text(title,style: TextStyle(fontSize: 18,), maxLines: 2,))
      ],),
    );
  }
}