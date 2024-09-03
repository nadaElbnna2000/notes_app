

import 'package:untitled/models/note_model.dart';

abstract class notesStates{}

class notesInitialState extends notesStates{}

class notesLoadingState extends notesStates{}
class notesSucessState extends notesStates{

 final List<NoteModel> notes;
 notesSucessState(this.notes);

}
class notesFailureState extends notesStates{
  final String error ;
  notesFailureState(this.error);
}