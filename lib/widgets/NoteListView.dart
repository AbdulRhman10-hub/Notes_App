import 'package:flutter/cupertino.dart';

import 'node_item.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: const NoteItem(),
      );
    }
    );
  }
}