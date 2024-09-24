import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';

import '../../constants/constants.dart';
import '../../models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

   addNote(NoteModel note) async {
    emit(AddNoteLoading());
   try {
     var notesBox = Hive.box(kNotesBox);

     emit(AddNoteSuccess());
     await notesBox.add(note);
   }catch (e) {
     AddNoteFailed(e.toString());
   }
   }

}
