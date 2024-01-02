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
                const Text('Brain Buster',style: TextStyle(
                  fontFamily: 'Combo Capital',
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                  // shadows: [Shadow(offset: Offset(2, 2))]
                )),
                Image.asset('assets/images/QuizIcon.png',width: 300,),
                const SizedBox(height: 30,),
                const Text('Gain Knowledge the Fun Way!',style: TextStyle(
                  fontFamily: 'Circo',
                  letterSpacing: 1.4,
                  fontSize: 24
                ),
                ),
                const SizedBox(height: 20,),
                OutlinedButton.icon(
                  onPressed: switchScreen, 
                  style: OutlinedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 74, 78, 105),
                    elevation: 10,
                    padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12)
                    ),
                    icon: const Icon(Icons.timer_outlined,color: Colors.white,size: 21,),
                  label: const Text('Start Quiz',style: TextStyle(
                    fontFamily: 'Circo',
                    fontSize: 18,
                    color: Colors.white
                  ),))
              ],
            ),
        );
  }
}