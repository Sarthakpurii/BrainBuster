import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget{
  const GradientContainer(this.switchScreen,{super.key});

  final void Function() switchScreen;

  // final List<Color> colorList;

  @override
  Widget build(context){
    return Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:[
          Color.fromARGB(255, 236, 216, 39),Color.fromARGB(255, 58, 249, 233)
        ],
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
                  onPressed: switchScreen, 
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