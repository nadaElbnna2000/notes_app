import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/models/note_model.dart';

import 'Widgets/edit_note_view_body.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key, required this.note});


  final NoteModel note;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: editNoteViewBody(
        note: note,
      ),
    );
  }
}
