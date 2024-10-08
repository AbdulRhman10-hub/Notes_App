import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/Cubits/add_note_cubit/add_note_cubit.dart';

import 'AddNoteForm.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNoteCubit, AddNoteState>(
          listener: (context, state) {
            if(state is AddNoteFailed)
              print('Failed!! , Try again ${state.errorMessage}');

            if(state is AddNoteSuccess)
              Navigator.pop(context);

          },
          builder: (context, state) {
            return  ModalProgressHUD
              (inAsyncCall: state is AddNoteLoading ? true : false ,
              child: AddNoteForm());
          },
        ),
      ),
    );
  }
}