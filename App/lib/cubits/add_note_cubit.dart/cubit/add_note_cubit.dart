import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:qq/models/note_model.dart';

part 'add_note_cubit_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());


  addNote(NoteModel note){

    
  }
}
