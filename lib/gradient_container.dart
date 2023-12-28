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
                Image.asset('assets/images/QuizIcon.png',width: 300,),
                const SizedBox(height: 50,),
                const Text('Learn Flutter the Fun Way!',style: TextStyle(
                  // fontFamily: ,
                  fontSize: 20
                ),
                ),
                const SizedBox(height: 30,),
                OutlinedButton.icon(
                  onPressed: (){}, 
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 236, 216, 39),
                    elevation: 10,
                    ),
                    icon: const Icon(Icons.timer_outlined),
                  label: const Text('Start Quiz'))
              ],
            ),
          ),
        );
  }
}