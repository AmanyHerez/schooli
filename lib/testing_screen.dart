import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:school/data/dio_helper.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            DioHelper.dioHelper.ParentRegister();
          },
          child: Text('Testing'),
        ),
      ),
    );
  }
}
