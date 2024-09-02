import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/cubit/addNoteCubit/addNotesCubit.dart';
import 'package:untitled/models/note_model.dart';

import 'custom_buttom.dart';
import 'custom_textField.dart';


import 'package:flutter_bloc/flutter_bloc.dart';


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

          CustomButtom(
            onTap: (){

              if(formKey.currentState!.validate()){
                formKey.currentState!.save();

                var noteModel= NoteModel(title: title!, subtitle: subtitle!, date: DateTime.now().toString(), color: Colors.blue.value);

                BlocProvider.of<AddNotesCubit>(context).addNote(noteModel);
              } else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
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
