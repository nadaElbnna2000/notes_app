import 'package:flutter/cupertino.dart';
import 'package:untitled/Views/Widgets/addNoteForm.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/addNoteCubit/addNotesCubit.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:untitled/cubit/notes_cubit/notesCubit.dart';



class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (context) => AddNotesCubit(),
      child: BlocConsumer<AddNotesCubit , AddNotesStates>(
        listener: (context , state){

          if(state is AddNoteFailureState){
            print('failed ${state.errorMessage}');
          }
          if(state is AddNoteSuccessState){
            BlocProvider.of<notesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
          }
        },
          builder: (context , state){
          return AbsorbPointer(
            absorbing: state is AddNoteLoadingState?true : false,
            child: Padding(
              padding:  EdgeInsets.only(left: 16.0 , right: 16 ,
              bottom:   MediaQuery.of(context).viewInsets.bottom
              ),
              child:  SingleChildScrollView(
                  child: AddNoteForm()),
            ),
          );
            //
          },

      ),
    );
  }
}
