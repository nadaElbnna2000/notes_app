import 'package:bloc/bloc.dart';
import 'package:untitled/models/note_model.dart';

part 'addNotesStates.dart';
class AddNotesCubit extends Cubit<AddNotesStates>{

  AddNotesCubit() : super(AddNoteInitialState());


  addNote(NoteModel note){

  }

}