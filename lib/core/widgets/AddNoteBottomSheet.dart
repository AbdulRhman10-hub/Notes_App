import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constant_colors.dart';
import 'AddNoteButton.dart';
import 'CustomTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox( height: 32,),
          CustomTextField(
             hint: 'Title',
          ),
          SizedBox( height: 32,),
          CustomTextField(
              hint: 'Content',
            maxLine: 5,
          ),
          SizedBox(height: 32),
          AddNoteButton(),
          SizedBox(height: 32,)
        ],
      ),
    );
  }
}


