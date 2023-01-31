import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:provider/provider.dart';
import 'package:school/provider/schooliProvider.dart';
import 'package:school/router.dart';
import 'package:school/screen/main_screen.dart';
import 'package:school/screen/parent_screen.dart';
import 'package:school/screen/splach_screen.dart';
import 'package:school/testing_screen.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Provider.debugCheckInvalidValueType = null;
  await EasyLocalization.ensureInitialized();


  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'),Locale('ar'),],
        path: 'assets/translations', // <-- change the path of the translation files
        fallbackLocale: Locale('en', 'US'),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context){
        return SchooliProvider();
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
        navigatorKey: AppRouter.navKey,
        home:SplachScreen(),
        //initialRoute: '/splach_screen',
        // routes: {
        //   '/splach_screen':(context)=>SplachScreen(),
        //   '/main_screen':(context)=>MainScreen(),
        // },
      ),
    );
  }
}