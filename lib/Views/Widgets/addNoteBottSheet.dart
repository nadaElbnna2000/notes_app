import 'package:flutter/cupertino.dart';
import 'package:untitled/Views/Widgets/addNoteForm.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/addNoteCubit/addNotesCubit.dart';

import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';



class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: BlocConsumer<AddNotesCubit , AddNotesStates>(
          listener: (context , state){

            if(state is AddNoteFailureState){

              print('failed ${state.errorMessage}');
            }

            if(state is AddNoteSuccessState){
              Navigator.pop(context);
            }
          },
            builder: (context , state){
            return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoadingState ? true : false,
                child: AddNoteForm()
            );
              //
            },

        ),
      ),
    );
  }
}
