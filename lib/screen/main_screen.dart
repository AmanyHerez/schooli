import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school/screen/add_school_screen.dart';
import 'package:school/screen/contact_us_screen.dart';
import 'package:school/screen/parent_screen.dart';

import '../constant/constant.dart';
import '../model/bn_screen.dart';
import 'home_screen.dart';

class MainScreen extends StatefulWidget {
  MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _currentIndex = 0;

  final List<BnScreen> _bnScreen = <BnScreen>[
    const BnScreen(widget: HomeScreen()),
    const BnScreen(widget: ParentScreen()),
      BnScreen(widget: AddSchoolScreen()),
    const BnScreen(widget: ContactScreen()),


  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _bnScreen[_currentIndex].widget,
      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: MouseCursor.defer,
        type: BottomNavigationBarType.fixed,
        onTap: (int value) {
          setState(() {
            _currentIndex = value;
          });

        },
        currentIndex: _currentIndex,
        selectedItemColor: mainColor,
        iconSize: 30,
        items: [
          BottomNavigationBarItem(

            icon: Icon(Icons.home),
            label: "home_br".tr(),
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.person),
            label: "parent".tr(),
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.add_circle_rounded),
            label: "add_School".tr(),
          ),
          BottomNavigationBarItem(

            icon: Icon(Icons.contact_support_sharp),
            label: "contact_us".tr(),
          ),

        ],
      ),
    );
  }
}