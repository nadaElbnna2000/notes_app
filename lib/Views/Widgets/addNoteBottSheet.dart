import 'package:flutter/cupertino.dart';
import 'package:untitled/Views/Widgets/addNoteForm.dart';

import 'custom_buttom.dart';
import 'custom_textField.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}
