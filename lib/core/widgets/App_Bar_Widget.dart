import 'package:flutter/cupertino.dart';

import 'Search_Icon_Widget.dart';

class Custom_App_Bar extends StatelessWidget {
  const Custom_App_Bar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: TextStyle(fontSize: 28,),),
        Spacer(),
        Search_icon(icon: icon,),
      ],
    );
  }
}

