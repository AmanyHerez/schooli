import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:school/screen/widget/divider_widget.dart';
import 'package:school/screen/widget/listTile_widget.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constant/constant.dart';
final Uri _url = Uri.parse('https://flutter.dev');
class ContactScreen extends StatelessWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Screen'),
        backgroundColor: mainColor,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(

        children: [
          Container(
            width: double.infinity,
            color: mainColor,
            height: 250,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Welcome to our Schools',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'assets/images/logo.png',
                  width: 200,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTileWidget(
                    title: 'info@schooli-edu.com', icon: Icons.email),
                DividerWidget(),
                ListTileWidget(title: '01153888011', icon: Icons.call),
                DividerWidget(),
                ListTileWidget(title: '01156800095', icon: Icons.call),
                DividerWidget(),
                ListTileWidget(
                    title:
                        '2 ibrahim Nawar street -sixth District -behind Hassabo Hospital- Nasr City',
                    icon: Icons.location_on),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'Follow US',
                    style: TextStyle(
                      color: Colors.grey,
                    ),

                  ),
                ),
            Row(
             children: [
               IconButton(
                 // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                 icon: FaIcon(FontAwesomeIcons.facebook,size: 40,),
                 onPressed: _launchUrl,
               ),
               IconButton(
                 // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                 icon: FaIcon(FontAwesomeIcons.twitter,size: 40,),
                 onPressed: _launchUrl,
               ),
               IconButton(
                 // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                 icon: FaIcon(FontAwesomeIcons.whatsapp,size: 40,),
                 onPressed: _launchUrl,
               ),
               IconButton(
                 // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                 icon: FaIcon(FontAwesomeIcons.telegram,size: 40,),
                 onPressed: _launchUrl,
               ),
             ],
            ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}