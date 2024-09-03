import 'package:flutter/cupertino.dart';
import 'package:untitled/cubit/notes_cubit/notesCubit.dart';
import 'package:untitled/cubit/notes_cubit/notesStates.dart';
import 'package:untitled/models/note_model.dart';
import 'package:untitled/views/Widgets/note_item.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

class NotesListView extends StatelessWidget {
  const NotesListView(  {super.key});



  @override
  Widget build(BuildContext context) {
    return BlocBuilder<notesCubit , notesStates>(
      builder: (context , state){
        List<NoteModel> notes = BlocProvider.of<notesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: ListView.builder(

            itemCount: notes.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context , index){
                return  Padding(
                  padding: EdgeInsets.symmetric(vertical:4 ),
                  child: NoteItem(
                    note:notes[index],
                  ),
                );
              }),
        );
      },


    );
  }
}
