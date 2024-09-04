import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/addNoteCubit/addNotesCubit.dart';

import '../../constants/colors.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key, required this.isActive, required this.color});

  final bool isActive;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return  isActive ? CircleAvatar(
      backgroundColor: Colors.white,

      radius: 38,
      child: CircleAvatar(
        backgroundColor: color,
        radius: 34 ,
      ),
    ) :  CircleAvatar(
      backgroundColor: color,
      radius: 38,
    )
    ;
  }
}


class ColorListView extends StatefulWidget {
  const ColorListView({super.key});

  @override
  State<ColorListView> createState() => _ColorListViewState();
}

class _ColorListViewState extends State<ColorListView> {
 // final bool isActive;


 int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: KColors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child:  GestureDetector(
              onTap: (){
                BlocProvider.of<AddNotesCubit>(context).color = KColors[index];


                currentIndex = index;
                setState(() {

                });
              },
              child: ColorsItem(
                color: KColors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
          }
      ),
    );
  }
}
