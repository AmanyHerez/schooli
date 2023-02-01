import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:school/model/area.dart';
import 'package:school/screen/widget/TextFieldWidget.dart';
import 'package:school/screen/widget/container_parent_widget.dart';

import '../constant/constant.dart';
import '../model/city.dart';
import '../model/gender.dart';
import '../model/religion.dart';
import '../provider/schooliProvider.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({Key? key}) : super(key: key);

  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  int _activeStepIndex = 0;
  bool isCompleted = false;



  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('student').tr(),
          content:
              Consumer<SchooliProvider>(builder: (context, provider, child) {
            return Container(
              child: Column(
                children: [
                  ContainerParentWidget(title: 'student_info'.tr()),
                  TextFieldWidget(
                    controller: provider.studentNameController,
                    title: 'student_name'.tr(),
                    textInputType: TextInputType.name,
                  ),
                  TextFieldWidget(
                    controller: provider.fatherNameController,
                    title: 'father_name'.tr(),
                    textInputType: TextInputType.name,
                  ),
                  TextFieldWidget(
                    controller: provider.familyNameController,
                    title: 'family_name'.tr(),
                    textInputType: TextInputType.name,
                  ),
                  TextFieldWidget(
                    controller: provider.motherNameController,
                    title: 'mother_name'.tr(),
                    textInputType: TextInputType.name,
                  ),
                  TextFieldWidget(
                    controller: provider.gradianNameController,
                    title: 'gardian_name'.tr(),
                    textInputType: TextInputType.name,
                  ),
                  TextFieldWidget(
                    controller: provider.nationalityController,
                    title: 'nationality'.tr(),
                    textInputType: TextInputType.text,
                  ),
                ],
              ),
            );
          }),
        ),
        Step(
          state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 1,
          title: const Text('General').tr(),
          content: Consumer<SchooliProvider>(
            builder: (context, provider, child) {
              return Container(
                child: Column(
                  children: [
                    ContainerParentWidget(title: 'genral_info'.tr()),
                    TextFieldWidget(
                      controller: provider.IdController,
                      title: 'ID'.tr(),
                      textInputType: TextInputType.number,
                    ),
                    TextFieldWidget(
                      controller: provider.secondLanguageController,
                      title: 'Second_language'.tr(),
                      textInputType: TextInputType.text,
                    ),
                    TextFieldWidget(
                      controller: provider.medicalProblemsController,
                      title: 'Medical_problems'.tr(),
                      textInputType: TextInputType.text,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: mainColor),
                      ),
                      child: DropdownButton<Religion>(
                          hint: Text('Religion').tr(),
                          isExpanded: true,
                          underline: SizedBox(),
                          value: provider.selectedReligion,
                          items: religion.map((e) {
                            return DropdownMenuItem<Religion>(
                              value: e,
                              child: Text(e.name),
                            );
                          }).toList(),
                          onChanged: (v) {
                            provider.selectedReligion = v;

                            setState(() {});
                          }),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: mainColor),
                      ),
                      child: DropdownButton<City>(
                          hint: Text('City').tr(),
                          isExpanded: true,
                          underline: SizedBox(),
                          value: provider.selectedCity,
                          items: city.map((e) {
                            return DropdownMenuItem<City>(
                              value: e,
                              child: Text(e.name),
                            );
                          }).toList(),
                          onChanged: (v) {
                            provider.selectedCity = v;

                            setState(() {});
                          }),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: mainColor),
                      ),
                      child: DropdownButton<Arae>(
                          hint: Text('Arae').tr(),
                          isExpanded: true,
                          underline: SizedBox(),
                          value: provider.selectedArae,
                          items: arae.map((e) {
                            return DropdownMenuItem<Arae>(
                              value: e,
                              child: Text(e.name),
                            );
                          }).toList(),
                          onChanged: (v) {
                            provider.selectedArae = v;

                            setState(() {});
                          }),
                    ),
                    TextFieldWidget(
                      controller: provider.DistrictController,
                      title: 'District'.tr(),
                      textInputType: TextInputType.text,
                    ),
                    TextFieldWidget(
                      controller: provider.StreetController,
                      title: 'Street'.tr(),
                      textInputType: TextInputType.streetAddress,
                    ),
                    TextFieldWidget(
                      controller: provider.homeController,
                      title: 'home_parent'.tr(),
                      textInputType: TextInputType.text,
                    ),
                    TextFieldWidget(
                      controller: provider.GovController,
                      title: 'Gov'.tr(),
                      textInputType: TextInputType.text,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Step(
          state: _activeStepIndex <= 2 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 2,
          title: const Text('Extra').tr(),
          content: Consumer<SchooliProvider>(
            builder: (context, provider, child) {
              return Container(
                child: Column(
                  children: [
                    ContainerParentWidget(title: 'Extra_info'.tr()),
                    TextFieldWidget(
                      controller: provider.BirthDateController,
                      title: 'Birth_Date'.tr(),
                      textInputType: TextInputType.number,
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.zero,
                        border: Border.all(color: mainColor),
                      ),
                      child: DropdownButton<Gender>(
                          hint: Text('Gender').tr(),
                          isExpanded: true,
                          underline: SizedBox(),
                          value: provider.selectedGender,
                          items: gender.map((e) {
                            return DropdownMenuItem<Gender>(
                              value: e,
                              child: Text(e.name),
                            );
                          }).toList(),
                          onChanged: (v) {
                            provider.selectedGender = v;

                            setState(() {});
                          }),
                    ),
                    TextFieldWidget(
                      controller: provider.ParentCellular1Controller,
                      title: 'Parent_cellular1'.tr(),
                      textInputType: TextInputType.numberWithOptions(),
                    ),
                    TextFieldWidget(
                      controller: provider.ParentCellular2Controller,
                      title: 'Parent_cellular2'.tr(),
                      textInputType: TextInputType.numberWithOptions(),
                    ),
                    TextFieldWidget(
                      controller: provider.previousSchoolController,
                      title: 'previous_school'.tr(),
                      textInputType: TextInputType.text,
                    ),
                    TextFieldWidget(
                      controller: provider.HomePhoneController,
                      title: 'Home_phone'.tr(),
                      textInputType: TextInputType.phone,
                    ),
                    TextFieldWidget(
                      controller: provider.NewClassController,
                      title: 'New_Class'.tr(),
                      textInputType: TextInputType.text,
                    ),
                    TextFieldWidget(
                      controller: provider.previousClassController,
                      title: 'previous_class'.tr(),
                      textInputType: TextInputType.streetAddress,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Step(
          state: StepState.complete,
          isActive: _activeStepIndex >= 3,
          title: const Text('Schools').tr(),
          content: Consumer<SchooliProvider>(
            builder: (context, provider, child) {
              return Container(
                child: Column(
                  children: [
                    ContainerParentWidget(title: 'Desired_school'.tr()),
                    TextFieldWidget(
                      controller: provider.PrevEduController,
                      title: 'Prev_Edu'.tr(),
                      textInputType: TextInputType.text,
                    ),
                    TextFieldWidget(
                      controller: provider.RequiredEduController,
                      title: 'Required_Edu'.tr(),
                      textInputType: TextInputType.text,
                    ),
                    TextFieldWidget(
                      controller: provider.NewAcademicController,
                      title: 'New_academic'.tr(),
                      textInputType: TextInputType.text,
                    ),
                    TextFieldWidget(
                      controller: provider.RegionController,
                      title: 'Region'.tr(),
                      textInputType: TextInputType.text,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ];

  @override
  Widget build(BuildContext context) {
    return Consumer<SchooliProvider>(
      builder: (context, provider, child) {
        return Scaffold(
          appBar: AppBar(
            title: Text('parent').tr(),
            backgroundColor: mainColor,
            centerTitle: true,
            leading: Icon(Icons.arrow_back),
          ),
          body: Theme(
            data: ThemeData(
              colorScheme:
                  Theme.of(context).colorScheme.copyWith(primary: mainColor),
            ),
            child: Stepper(
              controlsBuilder: (BuildContext context, ControlsDetails details) {
                return Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: _activeStepIndex == 3
                            ? () {
                                provider.ParentRegisterProvider();
                                provider.studentNameController.text=" ";
                                provider.fatherNameController.text=" ";
                                provider.familyNameController.text=" ";
                                provider.motherNameController.text=" ";
                                provider.gradianNameController.text=" ";
                                provider.nationalityController.text=" ";
                                provider.IdController.text=" ";
                                provider.secondLanguageController.text=" ";
                                provider.medicalProblemsController.text=" ";
                                provider.DistrictController.text=" ";
                                provider.StreetController.text=" ";
                                provider.homeController.text=" ";
                                provider.GovController.text=" ";
                                provider.BirthDateController.text=" ";
                                provider.ParentCellular1Controller.text=" ";
                                provider.ParentCellular2Controller.text=" ";
                                provider.previousSchoolController.text=" ";
                                provider.HomePhoneController.text=" ";
                                provider.NewClassController.text=" ";
                                provider.previousClassController.text=" ";
                                provider.PrevEduController.text=" ";
                                provider.RequiredEduController.text=" ";
                                provider.NewAcademicController.text=" ";
                                provider.RegionController.text=" ";
                              }
                            : details.onStepContinue,
                        child: _activeStepIndex == 3
                            ? Text('Submit').tr()
                            : Text('next').tr(),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                        onPressed: details.onStepCancel,
                        child: Text('cancel').tr(),
                      ),
                    ],
                  ),
                );
              },

              type: StepperType.horizontal,
              currentStep: _activeStepIndex,
              steps: stepList(),
              onStepContinue: () {
                //  final isLastStep = _activeStepIndex == stepList().length ;
                if (_activeStepIndex < (stepList().length - 1)) {
                  setState(() {
                    _activeStepIndex += 1;
                  });
                } else {
                  print('Submited');
                }
              },
              onStepCancel: () {
                if (_activeStepIndex == 0) {
                  return;
                }
                setState(() {
                  _activeStepIndex -= 1;
                });
              },
              onStepTapped: (int index) {
                setState(() {
                  _activeStepIndex = index;
                });
              },
              // controlsBuilder: (context, {onStepContinue, onStepCancel}) async {
              //   final isLastStep = _activeStepIndex == stepList().length - 1;
              //   return Container(
              //     child: Row(
              //       children: [
              //         Expanded(
              //           child: ElevatedButton(
              //             onPressed: onStepContinue,
              //             child: (isLastStep)
              //                 ? const Text('Submit')
              //                 : const Text('Next'),
              //           ),
              //         ),
              //         const SizedBox(
              //           width: 10,
              //         ),
              //         if (_activeStepIndex > 0)
              //           Expanded(
              //             child: ElevatedButton(
              //               onPressed: onStepCancel,
              //               child: const Text('Back'),
              //             ),
              //           )
              //       ],
              //     ),
              //   );
              // },
            ),
          ),
        );
      },
    );
  }
}
