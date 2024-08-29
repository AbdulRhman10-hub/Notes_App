import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/widgets/AddNoteBottomSheet.dart';
import 'notes_view_body.dart';

class note_app_view extends StatefulWidget {
  const note_app_view({super.key});

  @override
  State<note_app_view> createState() => _note_app_viewState();
}

class _note_app_viewState extends State<note_app_view> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context){
            return const AddNoteBottomSheet();
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.cyanAccent,
        shape: CircleBorder(),
      ),
      body: CustomBody(),
    );
  }
}


