import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school/data/dio_helper.dart';
import 'package:school/data/dummy_data.dart';
import 'package:school/provider/schooliProvider.dart';

import 'model/artical_model.dart';

class TestingScreen extends StatelessWidget {

  ArticleModel? articleModel;
  @override
  Widget build(BuildContext context) {
    return Consumer<SchooliProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          body:
          // Column(
          //   children: [
          //
          //     Center(
          //       child: ElevatedButton(
          //         onPressed: () {
          //          // provider.ParentRegisterProvider();
          //          // DioHelper.dioHelper.getArticel();
          //         },
          //         child: Text('Testing'),
          //       ),
          //     ),
          //     Text(articleModel?.title.toString() ?? " error"),
          //   ],
          // ),
          ListView.builder(itemBuilder: (context, index) => Text(articles[index].date!),itemCount: articles.length),
        );
      },

    );
  }
}
