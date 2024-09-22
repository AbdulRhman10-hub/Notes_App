import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:note_app/constants/constants.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final int maxLine;
  const CustomTextField({super.key, required this.hint,  this.maxLine = 1 , this.onSaved, this.value });

  final void Function(String?)? onSaved;
  final String? Function(String?)? value;
  @override
  Widget build(BuildContext context) {

    return  TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if(value?.isEmpty ?? true) // (value?.isEmpty): to check that the context not empty   and  (??null) : is nullable check in flutter to check that the context not null
          return 'field is required';
        else
          return null;
      },
      maxLines: maxLine,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kPrimaryColor),
        hintText: hint,
        hintStyle: TextStyle(color: kPrimaryColor),
      ),
    );
  }
  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: color ?? Colors.white)
    );
  }
}
