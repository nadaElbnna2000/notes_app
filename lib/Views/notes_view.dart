import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Views/Widgets/addNoteBottSheet.dart';

import 'Widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      floatingActionButton: FloatingActionButton(onPressed: (){


        showModalBottomSheet(context: context,
            builder: (context){
          return const AddNoteBottomSheet();
            }

        );
      },
        backgroundColor: Colors.lightBlueAccent,
        shape: CircleBorder(),
      child: Icon(
          Icons.add,
        color: Colors.black,

      ),
      ),

      body: NotesViewBody(),
    );
  }
}
