import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../constant/constant.dart';
class ParentScreen extends StatelessWidget {
  const ParentScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('parent').tr(),
        backgroundColor: mainColor,
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
    );
  }
}