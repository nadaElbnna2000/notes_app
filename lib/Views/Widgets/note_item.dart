import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:untitled/Views/edit_note_view.dart';
import 'package:untitled/cubit/notes_cubit/notesCubit.dart';

import '../../models/note_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});


  final NoteModel note;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return  EditNoteView(
                note: note,
              );
            }
        ));
      },
      child: Container(
        padding: const EdgeInsets.only(top: 24 , bottom: 24 , left: 16),

        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end ,
          children: [

            ListTile(
              title:  Text(
                note.title,
                style: TextStyle(
                    color: Colors.black,
                   fontSize: 26
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(
                  top: 16,
                  bottom: 16,
                ),
                child: Text(
                  note.subtitle,
                  style: TextStyle(
                    color: Colors.black.withOpacity(.5),
                    fontSize: 18,

                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: (){
                  note.delete();
                  BlocProvider.of<notesCubit>(context).fetchAllNotes();
                },
                icon:const Icon(
                  FontAwesomeIcons.trash,
                  color: Colors.black,
                  size: 24,
                ),
              ),

            ),

            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(
                  fontSize:16,
                  color: Colors.black.withOpacity(.5),
                ),
              ),
            )
          ],
        )

      ),
    );
  }
}
