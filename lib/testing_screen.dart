import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school/data/dio_helper.dart';
import 'package:school/provider/schooliProvider.dart';

class TestingScreen extends StatelessWidget {
  const TestingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<SchooliProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body: Center(
            child: ElevatedButton(
              onPressed: () {
                provider.ParentRegisterProvider();
              },
              child: Text('Testing'),
            ),
          ),
        );
      },

    );
  }
}
