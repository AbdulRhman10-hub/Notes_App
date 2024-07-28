import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'note_app_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(), // dark mode or light mode
      //theme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: ), // if i want to change the degree of dark of any part of screen
      home:const note_app_view(),
    );
  }
}
