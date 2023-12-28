import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.colorList,{super.key});


  final List<Color> colorList;

  @override
  Widget build(context){
    return Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:colorList,
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          ),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset('assets/images/QuizIcon.png',)
              ],
            ),
          ),
        );
  }
}