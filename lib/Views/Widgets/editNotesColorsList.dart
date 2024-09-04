import 'package:flutter/cupertino.dart';
import 'package:untitled/models/note_model.dart';

import '../../constants/colors.dart';

import 'ColorsItem.dart';

class Editnotescolorslist extends StatefulWidget {

  const Editnotescolorslist({super.key, required this.note});
  final NoteModel note;



  @override
  State<Editnotescolorslist> createState() => _EditnotescolorslistState();
}


class _EditnotescolorslistState extends State<Editnotescolorslist> {

  late int currentIndex ;

   @override
  void initState() {


     currentIndex = KColors.indexOf(Color(widget.note.color));
    super.initState();
  }

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


                  currentIndex = index;

                  widget.note.color = KColors[index].value;
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
    );;
  }
}
