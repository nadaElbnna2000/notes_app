import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint,  this.maxlines = 1, this.onSaved, this.onChanged});



  final String hint;
  final int maxlines;
  final void Function(String?)? onSaved;
  final  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      onChanged: onChanged,
      validator: (value){
        if(value?.isEmpty ?? true){
          return 'field is required';
        } else{
          return null;
        }
      },
      cursorColor: KPrimaryColor,
      maxLines: maxlines,
      decoration: InputDecoration(
        hintText: hint,
        // hintStyle: TextStyle(
        //   color: KPrimaryColor,
        // ),
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(KPrimaryColor),
      ),
    );
  }


  OutlineInputBorder buildBorder([color]){
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(
        color: color??Colors.white,
      ),
    );
  }
}
