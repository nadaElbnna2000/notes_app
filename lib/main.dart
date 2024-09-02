import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:untitled/cubit/addNoteCubit/addNotesCubit.dart';
import 'package:untitled/models/note_model.dart';
import 'package:untitled/views/notes_view.dart';
import 'SimpleBlocObserver.dart';
import 'constants/texts.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


void main()  async{
 await Hive.initFlutter();
 Bloc.observer = SimpleBlocObserver();
 Hive.registerAdapter(NoteModelAdapter());

 await Hive.openBox<NoteModel>(kNotesBox);
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


