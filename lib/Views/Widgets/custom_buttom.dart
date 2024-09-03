import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/constants/colors.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key, this.onTap,  this.isLoading = false});


  final void Function()? onTap;

  final bool isLoading ;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,

      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child:  Center(
          child: isLoading? SizedBox(
            height:24 ,
            width: 24,
            child: const CircularProgressIndicator(
              color: Colors.black,
            ),
          ): Text(

            'Add',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
