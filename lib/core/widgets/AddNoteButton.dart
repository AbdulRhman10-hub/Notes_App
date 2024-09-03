import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constant_colors.dart';

class AddNoteButton extends StatelessWidget {
  const AddNoteButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(child: Text("Add" , style: TextStyle(fontSize: 20 , fontWeight: FontWeight.bold , color: Colors.black),)),

    );
  }
}