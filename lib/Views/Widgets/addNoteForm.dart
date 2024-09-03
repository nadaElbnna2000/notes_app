import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/cubit/addNoteCubit/addNotesCubit.dart';
import 'package:untitled/models/note_model.dart';

import 'custom_buttom.dart';
import 'custom_textField.dart';


import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';




class AddNoteForm extends StatefulWidget {
   AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String ? title ;

  String ? subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(

      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [

          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){

              title = value;

            },
            hint: 'title',
          ),

          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){

              subtitle = value;

            },
            hint: 'content',
            maxlines: 5,
          ),
          SizedBox(
            height: 32,
          ),

          BlocBuilder<AddNotesCubit ,AddNotesStates>(
            builder: (context , state){
              return CustomButtom(
                isLoading: state is AddNoteLoadingState? true : false,
                onTap: (){

                  if(formKey.currentState!.validate()){
                    formKey.currentState!.save();

                    var currentDate =DateTime.now();
                    var formattedCurrentDate = DateFormat.yMd().format(currentDate);

                    var noteModel= NoteModel(
                        title: title!,
                        subtitle: subtitle!,
                        date: formattedCurrentDate,
                        color: Colors.blue.value
                    );

                    BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
                  } else{
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {

                    });
                  }
                },
              );
            },

          ),

          SizedBox(
            height: 16,
          ),

        ],
      ),
    );
  }
}
