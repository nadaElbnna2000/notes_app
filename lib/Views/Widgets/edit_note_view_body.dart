import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/Views/Widgets/custom_textField.dart';

import 'custom_app_bar.dart';

class editNoteViewBody extends StatelessWidget {
  const editNoteViewBody({super.key});

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
            title: 'Edit Note',
            icon: Icons.check,
          ),

          SizedBox(
            height: 50,
          ),
          CustomTextField(hint: 'Title'),

          SizedBox(
            height: 16,
          ),

          CustomTextField(hint: 'Content' , maxlines: 5,),

        ],
      ),
    );
  }
}
