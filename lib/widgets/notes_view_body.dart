import 'package:flutter/cupertino.dart';

import 'App_Bar_Widget.dart';

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
        ],
      ),
    );
  }
}

