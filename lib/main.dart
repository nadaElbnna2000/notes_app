import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled/models/note_model.dart';
import 'package:untitled/views/notes_view.dart';
import 'constants/texts.dart';

void main()  async{
 await Hive.initFlutter();
 await Hive.openBox(kNotesBox);
 Hive.registerAdapter(NoteModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: 'Poppins',
      ),


      home: NotesView(),
    );
  }
}


