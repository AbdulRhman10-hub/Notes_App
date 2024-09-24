import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants/constants.dart';

import 'models/note_model.dart';
import 'myapp.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModel as TypeAdapter); // register the type adaptor for the type adapter to define it to hive
  runApp(const MyApp());
}

