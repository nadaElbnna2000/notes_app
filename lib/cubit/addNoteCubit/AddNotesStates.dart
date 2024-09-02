part of 'addNotesCubit.dart';

abstract class AddNotesStates{}

class AddNoteInitialState extends AddNotesStates{}

class AddNoteLoadingState extends AddNotesStates{}

class AddNoteSuccessState extends AddNotesStates{}

class AddNoteFailureState extends AddNotesStates{
  final String errorMessage;
  AddNoteFailureState(this.errorMessage);
}
