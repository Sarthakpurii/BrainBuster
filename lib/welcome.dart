import 'package:flutter/material.dart';

class Welcome extends StatelessWidget{
  const Welcome(this.switchScreen,{super.key});

  final void Function() switchScreen;

  // final List<Color> colorList;

  @override
  Widget build(context){
    return Center(
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
        );
  }
}