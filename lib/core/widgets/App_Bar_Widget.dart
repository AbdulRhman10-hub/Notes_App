import 'package:flutter/cupertino.dart';

import 'Search_Icon_Widget.dart';

class Custom_App_Bar extends StatelessWidget {
  const Custom_App_Bar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text("Notes",style: TextStyle(fontSize: 28,),),
        Spacer(),
        Search_icon(),
      ],
    );
  }
}

