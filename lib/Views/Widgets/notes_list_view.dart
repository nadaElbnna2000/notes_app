import 'package:flutter/cupertino.dart';
import 'package:untitled/views/Widgets/note_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context , index){
      return Padding(
        padding: const EdgeInsets.symmetric(vertical:4 ),
        child: const NoteItem(),
      );
    });
  }
}
