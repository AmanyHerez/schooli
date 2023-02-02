import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:school/constant/constant.dart';
import 'package:school/data/dio_helper.dart';
import 'package:school/data/dummy_data.dart';
import 'package:school/provider/schooliProvider.dart';
import 'package:url_launcher/url_launcher.dart';

import 'model/artical_model.dart';

class TestingScreen extends StatelessWidget {
  ArticleModel? articleModel;

  @override
  Widget build(BuildContext context) {
    return Consumer<SchooliProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('All News'),
            backgroundColor: mainColor,
            centerTitle: true,
          ),
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
              ListView.builder(
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          final Uri url = Uri.parse(articles[index].link!);

                          launchUrl(url);
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                              width: double.infinity,
                              height: 60,
                              decoration: BoxDecoration(
                                color: mainColor,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                  child: Text(
                                articles[index].title!.rendered!,
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ))),
                        ),
                      ),
                  itemCount: articles.length),
        );
      },
    );
  }

// Future<void> _launchUrl() async {
//   if (!await launchUrl(url)) {
//     throw Exception('Could not launch $url');
//   }
// }
}
