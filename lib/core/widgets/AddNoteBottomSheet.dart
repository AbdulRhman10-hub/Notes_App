import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants/constant_colors.dart';
import 'CustomTextField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox( height: 32,),
        CustomTextField(),
      ],
    );
  }
}

