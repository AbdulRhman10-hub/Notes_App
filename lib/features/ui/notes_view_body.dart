import 'package:flutter/cupertino.dart';

import '../../core/widgets/App_Bar_Widget.dart';
import '../../core/widgets/NoteListView.dart';


class CustomBody extends StatelessWidget {
  const CustomBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: const Column(
        children: [
         SizedBox(
           height: 50,
         ),
          Custom_App_Bar(),
          Expanded(child: NoteListView()),
        ],
      ),
    );
  }
}




