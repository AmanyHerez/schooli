import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school/router.dart';
import 'package:school/screen/article_screen.dart';
import 'package:school/screen/widget/Text_home_widget.dart';
import 'package:school/screen/widget/container_cicular.dart';
import 'package:school/screen/widget/container_rectangle.dart';
import 'package:school/screen/widget/divider_widget.dart';
import 'package:school/screen/widget/our_service_widget.dart';
import 'package:school/testing_screen.dart';

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
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(48.0),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: Container(
              height: 50.0,
              alignment: Alignment.center,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/logo.png',
                    width: 200,
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height:25,
            ),
            TextHomeWidget(title: 'Our_Services'.tr()),

            SizedBox(
              height: 5,
            ),
            OurServiceWidget(title: 'ser1'.tr()),
            SizedBox(
              height: 5,
            ),
            OurServiceWidget(title: 'ser2'.tr()),
            SizedBox(
              height: 5,
            ),
            OurServiceWidget(title: 'ser3'.tr()),
            SizedBox(
              height: 5,
            ),
            OurServiceWidget(title: 'ser4'.tr()),

            SizedBox(
              height: 20,
            ),
            DividerWidget(),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Parents_Sign_Up'.tr(),
                  style: TextStyle(
                    color: Colors.white,

                    fontSize: 20,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: mainColor,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            DividerWidget(),
            SizedBox(
              height: 20,
            ),
            TextHomeWidget(title: 'Our_Partners'.tr()),
            Text(
              'School'.tr(),
              style: TextStyle(

                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            SizedBox(
              height: 70,

              child: ListView.builder(
                itemBuilder: (context, index) => ContainerCircular(),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                 shrinkWrap: true,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DividerWidget(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'become_Partner'.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,

                    fontSize: 20,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: mainColor,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DividerWidget(),
            SizedBox(
              height: 5,
            ),
            TextHomeWidget(title: 'posts_grid'.tr()),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 70,

              child: ListView.builder(
                itemBuilder: (context, index) => ContainerRectangle(),
                itemCount: 3,
                scrollDirection: Axis.horizontal,
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(
              onPressed: () {
                AppRouter.NavigateToWidget(TestingScreen());
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'All News'.tr(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,

                    fontSize: 20,
                  ),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: mainColor,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
