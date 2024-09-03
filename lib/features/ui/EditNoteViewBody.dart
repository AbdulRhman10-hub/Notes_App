import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app/core/widgets/AddNoteBottomSheet.dart';
import 'package:note_app/core/widgets/App_Bar_Widget.dart';
import 'package:note_app/core/widgets/CustomTextField.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Custom_App_Bar(
              title: 'Edit Note',
              icon: Icons.check,
            ),
            SizedBox(
              height: 50,
            ),
            CustomTextField(hint: 'Title'),
            SizedBox(
              height: 16,
            ),
            CustomTextField(hint: 'Content', maxLine: 5,),
          ],
        ),
      ),
    );
  }
}
