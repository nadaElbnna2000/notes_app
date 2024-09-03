import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/addNoteCubit/addNotesCubit.dart';

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

 List<Color> colors = [
   Color(0xffAC3931),
   Color(0xffE5D352),
   Color(0xffD9E76C),
   Color(0xff537D8D),
   Color(0xff482C3D),



 ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: colors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 6.0),
            child:  GestureDetector(
              onTap: (){
                BlocProvider.of<AddNotesCubit>(context).color = colors[index];


                currentIndex = index;
                setState(() {

                });
              },
              child: ColorsItem(
                color: colors[index],
                isActive: currentIndex == index,
              ),
            ),
          );
          }
      ),
    );
  }
}
