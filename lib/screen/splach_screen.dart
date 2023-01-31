import "package:flutter/material.dart";
import 'package:school/router.dart';
import 'package:school/screen/main_screen.dart';

import '../constant/constant.dart';
class SplachScreen extends StatefulWidget {
  const SplachScreen({Key? key}) : super(key: key);

  @override
  _SplachScreenState createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      AppRouter.NavigateWithReplacemtnToWidget(MainScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(child: Image(image:AssetImage('assets/images/logo.png'),width: 300,)),
    );
  }
}
