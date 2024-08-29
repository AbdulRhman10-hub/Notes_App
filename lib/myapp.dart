import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'features/ui/note_app_view.dart';
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:const note_app_view(),
    );
  }
}
