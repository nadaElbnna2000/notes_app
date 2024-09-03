import 'package:hive/hive.dart';
import 'package:bloc/bloc.dart';

import '../../constants/texts.dart';
import '../../models/note_model.dart';
import 'notesStates.dart';

class notesCubit extends Cubit<notesStates>{

  notesCubit() : super (notesInitialState());


  List<NoteModel>? notes;

  fetchAllNotes() async{
    var notesBox=  Hive.box<NoteModel>(kNotesBox);
    notes =  notesBox.values.toList();
    emit(notesSuccessState());
    
  }




}