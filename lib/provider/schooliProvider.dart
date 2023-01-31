import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

import '../data/dio_helper.dart';


class SchooliProvider extends ChangeNotifier {


  //***************login************************//
  GlobalKey<FormState> loginKey = GlobalKey();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  // login() async {
  //   String token = await DioHelper.dioHelper.login(
  //     emailController.text,
  //     passwordController.text,
  //   );
  //   SpHelper.spHelper.SaveToken(token);
  //
  //   log(" token :${token}");
  // }

  /////////////////////***********Register*************/////////////////////
  GlobalKey<FormState> RegisterKey = GlobalKey();
  TextEditingController emailRegController = TextEditingController();
  TextEditingController passwordRegController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  ParentRegisterProvider() async {
    await DioHelper.dioHelper.ParentRegister(
        // nameController.text,
        // emailRegController.text,
        // passwordRegController.text,
        // phoneController.text,
    );
  }

  ///////////////************method validation****************////////////////
  nullValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'required'.tr();
    }
  }


}