import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home').tr(),
        backgroundColor: mainColor,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
        actions: [
          TextButton(
            onPressed: () {
              if (context.locale.toString() == 'ar') {
                context.setLocale(Locale('en'));
              } else {
                context.setLocale(Locale('ar'));
              }
            },
            child: Text(context.locale.toString() == 'ar' ? 'ar' : "er",
              style: TextStyle(color: Colors.white,),),
          ),
        ],
      ),


    );
  }
}