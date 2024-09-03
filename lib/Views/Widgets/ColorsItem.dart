import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ColorsItem extends StatelessWidget {
  const ColorsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 38,
    );
  }
}


class ColorListView extends StatelessWidget {
  const ColorListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        itemCount: 10,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context , index){
          return const ColorsItem();
          }
      ),
    );
  }
}
