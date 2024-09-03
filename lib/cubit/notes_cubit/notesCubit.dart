import 'package:hive/hive.dart';
import 'package:bloc/bloc.dart';

import '../../constants/texts.dart';
import '../../models/note_model.dart';
import 'notesStates.dart';





class notesCubit extends Cubit<notesStates>{

  notesCubit() : super (notesInitialState());





  fetchAllNotes(NoteModel note) async{

    try{
      var notesBox=  Hive.box<NoteModel>(kNotesBox);
     List<NoteModel> notes =  notesBox.values.toList();
      emit(notesSucessState(notes));
    }catch (e){
      emit(notesFailureState(e.toString()));
    }
  }



}