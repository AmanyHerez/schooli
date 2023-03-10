import 'dart:developer';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:string_validator/string_validator.dart';

import '../data/dio_helper.dart';
import '../model/area.dart';
import '../model/city.dart';
import '../model/gender.dart';
import '../model/religion.dart';


class SchooliProvider extends ChangeNotifier {


  //***************login************************//
  GlobalKey<FormState> loginKey = GlobalKey();

  TextEditingController studentNameController = TextEditingController();
  TextEditingController fatherNameController = TextEditingController();
  TextEditingController familyNameController = TextEditingController();
  TextEditingController motherNameController = TextEditingController();
  TextEditingController gradianNameController = TextEditingController();
  TextEditingController nationalityController = TextEditingController();

  TextEditingController IdController = TextEditingController();
  TextEditingController secondLanguageController = TextEditingController();
  TextEditingController medicalProblemsController = TextEditingController();
  TextEditingController DistrictController = TextEditingController();
  TextEditingController StreetController = TextEditingController();
  TextEditingController homeController = TextEditingController();
  TextEditingController GovController = TextEditingController();

  TextEditingController BirthDateController = TextEditingController();
  TextEditingController ParentCellular1Controller = TextEditingController();
  TextEditingController ParentCellular2Controller = TextEditingController();
  TextEditingController previousSchoolController = TextEditingController();
  TextEditingController HomePhoneController = TextEditingController();
  TextEditingController NewClassController = TextEditingController();
  TextEditingController previousClassController = TextEditingController();

  TextEditingController PrevEduController = TextEditingController();
  TextEditingController RequiredEduController = TextEditingController();
  TextEditingController NewAcademicController = TextEditingController();
  TextEditingController RegionController = TextEditingController();

  Gender? selectedGender;
  Religion? selectedReligion;
  City? selectedCity;
  Arae? selectedArae;

  ParentRegisterProvider() async {
    await DioHelper.dioHelper.ParentRegister(
      studentNameController.text,
      fatherNameController.text,
      familyNameController.text,
      motherNameController.text,
      gradianNameController.text,
      nationalityController.text,
      IdController .text,
      secondLanguageController.text,
      medicalProblemsController.text,
      selectedReligion.toString(),
      selectedCity.toString(),
      selectedArae.toString(),
      DistrictController.text,
      StreetController.text,
      homeController.text,
      GovController.text,
      BirthDateController.text,
      selectedGender.toString(),
      ParentCellular1Controller.text,
      ParentCellular2Controller.text,
      previousSchoolController.text,
      HomePhoneController.text,
      NewClassController.text,
      previousClassController.text,
      PrevEduController.text,
      RequiredEduController.text,
      NewAcademicController.text,
      RegionController.text,
    );
  }

  ///////////////************method validation****************////////////////
  nullValidation(String? value) {
    if (value == null || value.isEmpty) {
      return 'required'.tr();
    }
  }


}