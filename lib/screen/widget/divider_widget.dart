import 'package:flutter/material.dart';
class DividerWidget extends StatelessWidget {
  const DividerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Colors.grey.shade400,
      height: 0,
      thickness: 1,
      indent: 18,
      endIndent: 18,


    );
  }
}
