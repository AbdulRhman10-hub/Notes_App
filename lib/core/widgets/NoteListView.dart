import 'package:flutter/cupertino.dart';

import 'node_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
        padding: EdgeInsets.zero, // to remove the list view default padding
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: const NoteItem(),
        );
      }
      ),
    );
  }
}