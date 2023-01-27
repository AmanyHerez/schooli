import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:school/model/area.dart';
import 'package:school/screen/widget/TextFieldWidget.dart';
import 'package:school/screen/widget/container_parent_widget.dart';

import '../constant/constant.dart';
import '../model/city.dart';
import '../model/gender.dart';
import '../model/religion.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({Key? key}) : super(key: key);

  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  int _activeStepIndex = 0;
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
  TextEditingController homeController= TextEditingController();
  TextEditingController GovController = TextEditingController();
  TextEditingController BirthDateController = TextEditingController();
  TextEditingController previousSchoolController = TextEditingController();
  TextEditingController HomePhoneController = TextEditingController();
  TextEditingController NewClassController = TextEditingController();
  TextEditingController previousClassController = TextEditingController();
  TextEditingController PrevEduController = TextEditingController();
  TextEditingController RequiredEduController = TextEditingController();
  TextEditingController NewAcademicController = TextEditingController();
  TextEditingController RegionController = TextEditingController();
  TextEditingController ParentCellular1Controller= TextEditingController();
  TextEditingController ParentCellular2Controller= TextEditingController();
  Religion? selectedReligion;
  Gender? selectedGender;
 City? selectedCity;
 Arae? selectedArae;

  List<Step> stepList() => [
        Step(
          state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 0,
          title: const Text('student').tr(),
          content: Container(
            child: Column(
              children: [
                ContainerParentWidget(title: 'student_info'.tr()),
                TextFieldWidget(
                  controller: studentNameController,
                  title: 'student_name'.tr(),
                  textInputType: TextInputType.name,
                ),
                TextFieldWidget(
                  controller: fatherNameController,
                  title: 'father_name'.tr(),
                  textInputType: TextInputType.name,
                ),
                TextFieldWidget(
                  controller: familyNameController,
                  title: 'family_name'.tr(),
                  textInputType: TextInputType.name,
                ),
                TextFieldWidget(
                  controller: motherNameController,
                  title: 'mother_name'.tr(),
                  textInputType: TextInputType.name,
                ),
                TextFieldWidget(
                  controller: gradianNameController,
                  title: 'gardian_name'.tr(),
                  textInputType: TextInputType.name,
                ),
                TextFieldWidget(
                  controller: nationalityController,
                  title: 'nationality'.tr(),
                  textInputType: TextInputType.text,
                ),
              ],
            ),
          ),
        ),
        Step(
          state: _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 1,
          title: const Text('General').tr(),
          content: Container(
            child: Column(
              children: [
                ContainerParentWidget(title: 'genral_info'.tr()),

                TextFieldWidget( controller: IdController,title: 'ID'.tr(),textInputType: TextInputType.number,),
                TextFieldWidget( controller: secondLanguageController,title: 'Second_language'.tr(),textInputType: TextInputType.text,),
                TextFieldWidget( controller: medicalProblemsController,title: 'Medical_problems'.tr(),textInputType: TextInputType.text,),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.zero,
              border: Border.all(color: mainColor),

            ),
            child: DropdownButton<Religion>(
              hint: Text('Religion').tr(),
                isExpanded: true,
                underline: SizedBox(),
                value: selectedReligion,
                items: religion.map((e) {
                  return DropdownMenuItem<Religion>(
                    value: e,
                    child: Text(e.name),
                  );
                }).toList(),
                onChanged: (v) {
                  selectedReligion = v;

                  setState(() {});
                }),
          ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    border: Border.all(color: mainColor),

                  ),
                  child: DropdownButton<City>(
                      hint: Text('City').tr(),
                      isExpanded: true,
                      underline: SizedBox(),
                      value: selectedCity,
                      items: city.map((e) {
                        return DropdownMenuItem<City>(
                          value: e,
                          child: Text(e.name),
                        );
                      }).toList(),
                      onChanged: (v) {
                        selectedCity = v;

                        setState(() {});
                      }),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    border: Border.all(color: mainColor),

                  ),
                  child: DropdownButton<Arae>(
                      hint: Text('Arae').tr(),
                      isExpanded: true,
                      underline: SizedBox(),
                      value: selectedArae,
                      items: arae.map((e) {
                        return DropdownMenuItem<Arae>(
                          value: e,
                          child: Text(e.name),
                        );
                      }).toList(),
                      onChanged: (v) {
                        selectedArae = v;

                        setState(() {});
                      }),
                ),
                TextFieldWidget( controller: DistrictController,title: 'District'.tr(),textInputType: TextInputType.text,),
                TextFieldWidget( controller: StreetController,title: 'Street'.tr(),textInputType: TextInputType.streetAddress,),
                TextFieldWidget( controller: homeController,title: 'home_parent'.tr(),textInputType: TextInputType.text,),
                TextFieldWidget( controller: GovController,title: 'Gov'.tr(),textInputType: TextInputType.text,),

              ],
            ),
          ),
        ),
        Step(
          state: _activeStepIndex <= 2 ? StepState.editing : StepState.complete,
          isActive: _activeStepIndex >= 2,
          title: const Text('Extra').tr(),
          content: Container(
            child: Column(
              children: [
                ContainerParentWidget(title: 'Extra_info'.tr()),

                TextFieldWidget( controller: BirthDateController,title: 'Birth_Date'.tr(),textInputType: TextInputType.number,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.zero,
                    border: Border.all(color: mainColor),

                  ),
                  child: DropdownButton<Gender>(
                      hint: Text('Gender').tr(),
                      isExpanded: true,
                      underline: SizedBox(),
                      value: selectedGender,
                      items: gender.map((e) {
                        return DropdownMenuItem<Gender>(
                          value: e,
                          child: Text(e.name),
                        );
                      }).toList(),
                      onChanged: (v) {
                        selectedGender = v;

                        setState(() {});
                      }),
                ),
                TextFieldWidget( controller: ParentCellular1Controller,title: 'Parent_cellular1'.tr(),textInputType: TextInputType.numberWithOptions(),),
                TextFieldWidget( controller: ParentCellular2Controller,title: 'Parent_cellular2'.tr(),textInputType: TextInputType.numberWithOptions(),),
                TextFieldWidget( controller: previousSchoolController,title: 'previous_school'.tr(),textInputType: TextInputType.text,),
                TextFieldWidget( controller: HomePhoneController,title: 'Home_phone'.tr(),textInputType: TextInputType.text,),
                TextFieldWidget( controller: NewClassController,title: 'New_Class'.tr(),textInputType: TextInputType.text,),
                TextFieldWidget( controller: previousClassController,title: 'previous_class'.tr(),textInputType: TextInputType.streetAddress,),


              ],
            ),
          ),
        ),
    Step(
      state: StepState.complete,
      isActive: _activeStepIndex >= 3,
      title: const Text('Schools').tr(),
      content: Container(
        child: Column(
          children: [
            ContainerParentWidget(title: 'Desired_school'.tr()),

            TextFieldWidget( controller: PrevEduController,title: 'Prev_Edu'.tr(),textInputType: TextInputType.number,),
            TextFieldWidget( controller: RequiredEduController,title: 'Required_Edu'.tr(),textInputType: TextInputType.text,),
            TextFieldWidget( controller: NewAcademicController,title: 'New_academic'.tr(),textInputType: TextInputType.text,),
            TextFieldWidget( controller: RegionController,title: 'Region'.tr(),textInputType: TextInputType.text,),



          ],
        ),
      ),
    ),
      ];

  @override
  Widget build(BuildContext context) {
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
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TextButton(
                  onPressed: details.onStepContinue,
                  child: const Text('next').tr(),
                ),
                TextButton(
                  onPressed: details.onStepCancel,
                  child: const Text('cancel').tr(),

                ),
              ],
            );
          },


          type: StepperType.horizontal,
          currentStep: _activeStepIndex,
          steps: stepList(),
          onStepContinue: () {
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
  }
}
