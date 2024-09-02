import 'package:flutter/cupertino.dart';

import 'custom_buttom.dart';
import 'custom_textField.dart';

class AddNoteForm extends StatefulWidget {
   AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String ? title ;

  String ? subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(

      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [

          SizedBox(
            height: 32,
          ),
          CustomTextField(
            onSaved: (value){

              title = value;

            },
            hint: 'title',
          ),

          SizedBox(
            height: 16,
          ),
          CustomTextField(
            onSaved: (value){

              subtitle = value;

            },
            hint: 'content',
            maxlines: 5,
          ),
          SizedBox(
            height: 32,
          ),

          CustomButtom(
            onTap: (){

              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              } else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {

                });
              }
            },
          ),

          SizedBox(
            height: 16,
          ),

        ],
      ),
    );
  }
}
