import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import 'AddNoteButton.dart';
import 'CustomTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey <FormState> formKey = GlobalKey(); // Form widget needs form key
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;  // appear when wrong inputs happened
  String ? title;
  String ? subTitle;
  @override
  Widget build(BuildContext context) {
    return  Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Column(
            children: [
              const SizedBox( height: 32,),
              CustomTextField(
                onSaved: (value){
                  title = value;
                },
                 hint: 'Title',
              ),
              const SizedBox( height: 32,),
              CustomTextField(
                onSaved: (value){
                  subTitle = value;
                },
                  hint: 'Content',
                maxLine: 5,
              ),
              const SizedBox(height: 32),
              AddNoteButton(
                onTap: (){
                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();
                  }
                  else {
                    autoValidateMode = AutovalidateMode.always;
                    setState(() {

                    });
                  }
                },
              ),
              const SizedBox(height: 32,),
            ],
          ),
    );
  }
}


