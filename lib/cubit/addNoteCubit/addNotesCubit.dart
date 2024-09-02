import 'package:bloc/bloc.dart';

part 'addNotesStates.dart';
class AddNotesCubit extends Cubit<AddNotesStates>{

  AddNotesCubit() : super(AddNoteInitialState());

}