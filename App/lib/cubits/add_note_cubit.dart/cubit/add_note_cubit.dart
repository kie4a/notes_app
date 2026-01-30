import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:qq/constants.dart';
import 'package:qq/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  
  addNote(NoteModel note) async {
    
    emit(AddNoteLoding());
    try {
      var notesBox = Hive.box<NoteModel>(knotesBox);

      emit(AddNoteSuccess());
      await notesBox.add(note);
    } on Exception catch (e) {
      AddNoteFailure(e.toString());
    }
  }
}
