import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:untitled/constants/texts.dart';
import 'package:untitled/models/note_model.dart';

import 'AddNotesStates.dart';


part 'AddNotesStates.dart';
class AddNotesCubit extends Cubit<AddNotesStates>{

  AddNotesCubit() : super(AddNoteInitialState());


  addNote(NoteModel note) async{
    emit(AddNoteLoadingState());
    try{
      var notesBox=  Hive.box<NoteModel>(kNotesBox);
      emit(AddNoteSuccessState());
      await notesBox.add(note);
     }catch (e){
      emit(AddNoteFailureState(e.toString()));
     }
  }
}