import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants/constants.dart';
import 'package:note_app/core/SimpleBockObserver.dart';

import 'models/note_model.dart';
import 'myapp.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = Simplebockobserver();
  await Hive.openBox(kNotesBox);
  Hive.registerAdapter(NoteModelAdapter()); // register the type adaptor for the type adapter to define it to hive
  runApp(const MyApp());
}

