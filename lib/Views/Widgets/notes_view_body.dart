import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Views/Widgets/custom_app_bar.dart';
import 'package:untitled/cubit/notes_cubit/notesCubit.dart';

import 'notes_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override

 void initState(){

    BlocProvider.of<notesCubit>(context).fetchAllNotes();
    super.initState()
;
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            title: 'Notes',
            icon:Icons.search,

          ),

          Expanded(
              child: NotesListView()
          ),
        ],
      ),
    );
  }
}
