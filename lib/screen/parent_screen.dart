import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:school/screen/widget/TextFieldWidget.dart';
import 'package:school/screen/widget/container_parent_widget.dart';

import '../constant/constant.dart';

class ParentScreen extends StatefulWidget {
  const ParentScreen({Key? key}) : super(key: key);
  @override
  _ParentScreenState createState() => _ParentScreenState();
}
class _ParentScreenState extends State<ParentScreen> {
  int _activeStepIndex = 0;
  TextEditingController nameController = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();
  TextEditingController address = TextEditingController();
  TextEditingController pincode = TextEditingController();
  List<Step> stepList() => [
    Step(
      state: _activeStepIndex <= 0 ? StepState.editing : StepState.complete,
      isActive: _activeStepIndex >= 0,
      title: const Text('Student '),
      content: Container(
        child: Column(
          children: [
            ContainerParentWidget(title: 'Student Information'),

            TextFieldWidget( controller: nameController,title: 'Student name:'),
            TextFieldWidget( controller: nameController,title: 'Father name:'),
            TextFieldWidget( controller: nameController,title: 'Family name:'),
            TextFieldWidget( controller: nameController,title: 'Mother Name:'),
            TextFieldWidget( controller: nameController,title: 'Gardian name:'),
            TextFieldWidget( controller: nameController,title: 'Nationality:'),

          ],
        ),
      ),
    ),
    Step(
        state:
        _activeStepIndex <= 1 ? StepState.editing : StepState.complete,
        isActive: _activeStepIndex >= 1,
        title: const Text('guardians '),
        content: Container(
          child: Column(
            children: [
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: address,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Full House Address',
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              TextField(
                controller: pincode,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Pin Code',
                ),
              ),
            ],
          ),
        )),
    Step(
        state: StepState.complete,
        isActive: _activeStepIndex >= 2,
        title: const Text('School '),
        content: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

                Text('Email: ${email.text}'),
                const Text('Password: *****'),
                Text('Address : ${address.text}'),
                Text('PinCode : ${pincode.text}'),
              ],
            )))
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
        data:  ThemeData(
          colorScheme: Theme.of(context).colorScheme.copyWith(primary: mainColor),
        ),
        child: Stepper(
          controlsBuilder: (context,_) {
            return Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  ElevatedButton(onPressed: (){}, child:const Text('NEXT'),),
                  SizedBox(width: 10,),
                  ElevatedButton(onPressed: (){}, child:const Text('Cancel'),),

                ],
              ),
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