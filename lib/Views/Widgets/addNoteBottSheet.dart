import 'package:flutter/cupertino.dart';

import 'custom_textField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [

          SizedBox(
            height: 32,
          ),
          CustomTextField(
            hint: 'title',
          ),

          SizedBox(
            height: 16,
          ),
          CustomTextField(
            hint: 'content',
            maxlines: 5,
          ),


        ],
      ),
    );
  }
}
