import 'package:flutter/material.dart';
import 'package:school/constant/constant.dart';
class TextFieldWidget extends StatelessWidget {
  TextEditingController controller;
  TextInputType? textInputType;
  Widget? suffix;
  final String? title;
  final Function? validator;
  // final Function?  onChanged;
  bool? obscureText;

  TextFieldWidget(
      { this.title,
         this.validator,
        required this.controller,
        this.suffix,
        // this. onChanged,

        this.textInputType});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      // onChanged:(x) =>  onChanged!(x) ,

      keyboardType: textInputType,
      controller: controller,
      validator: (x) => validator!(x),

      decoration: InputDecoration(


        suffix: suffix,
        hintText:title ,

        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: mainColor,
          ),
       borderRadius: BorderRadius.zero,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: mainColor,
          ),
          borderRadius: BorderRadius.zero,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: mainColor,
            width: 2,

          ),
          borderRadius: BorderRadius.zero,

        ),
      ),
    );
  }
}

