import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Views/Widgets/custom_textField.dart';
import 'package:untitled/Views/Widgets/editNotesColorsList.dart';
import 'package:untitled/cubit/notes_cubit/notesCubit.dart';
import 'package:untitled/models/note_model.dart';

import 'ColorsItem.dart';
import 'custom_app_bar.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class editNoteViewBody extends StatefulWidget {
  const editNoteViewBody({super.key, required this.note});


  final NoteModel note;

  @override
  State<editNoteViewBody> createState() => _editNoteViewBodyState();
}

class _editNoteViewBodyState extends State<editNoteViewBody> {


   String? title;
   String? subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Column(
        children:[
          SizedBox(
            height: 50,
          ),

          CustomAppBar(
            onPressed: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = subTitle ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<notesCubit>(context).fetchAllNotes();

              Navigator.pop(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),

          SizedBox(
            height: 50,
          ),
          CustomTextField(
              hint: widget.note.title,
              onChanged: (value){
                title = value;

              }
          ),

          SizedBox(
            height: 16,
          ),

          CustomTextField(
            hint: widget.note.subtitle ,
            maxlines: 5,
            onChanged: (value){
              subTitle=value;
            },
          ),

          SizedBox(
            height: 16,
          ),
           Editnotescolorslist(
            note: widget.note
            ,),
        ],
      ),


    );
  }
}
