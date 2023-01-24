import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school/screen/widget/Text_home_widget.dart';
import 'package:school/screen/widget/container_cicular.dart';
import 'package:school/screen/widget/container_rectangle.dart';
import 'package:school/screen/widget/divider_widget.dart';

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
            child: Text(
              context.locale.toString() == 'ar' ? 'ar' : "er",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          TextHomeWidget(title:'Our Services' ),

          DividerWidget(),
          ElevatedButton(onPressed: () {}, child: Text('Parents Sign Up',style: TextStyle(color: mainColor),),style: ElevatedButton.styleFrom(
            primary: Colors.white,

          ),),
          DividerWidget(),
          TextHomeWidget(title:'Our Partners' ),
          Text('Schools'),
          // ListView.builder(itemBuilder: (context, index) => ContainerCircular(),itemCount: 3,scrollDirection: Axis.horizontal,physics: NeverScrollableScrollPhysics(),),
          DividerWidget(),
          ElevatedButton(
              onPressed: () {},
              child: Text('Become A Partner\n schools Sign Up')),
          DividerWidget(),
          TextHomeWidget(title: 'Posts Grid'),
          // ListView.builder(itemBuilder: (context, index) => ContainerRectangle(),itemCount: 3,scrollDirection: Axis.horizontal,physics: NeverScrollableScrollPhysics(),),

        ],
      ),
    );
  }
}
