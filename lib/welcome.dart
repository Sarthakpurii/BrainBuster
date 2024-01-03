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



                
                Container(
  decoration: BoxDecoration(
    // color: Color.fromARGB(255, 74, 78, 105),
    borderRadius: BorderRadius.circular(32), // Same as button background
    boxShadow: [
      BoxShadow(
        color: Colors.black.withOpacity(0.5),
        spreadRadius: 0,
        blurRadius: 10,
        offset: const Offset(0, 0), // changes position of shadow
      ),
    ],
  ),
  child: ElevatedButton.icon(
    onPressed: switchScreen, 
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent, // To use the container's color
      shadowColor: Colors.transparent, // To remove button's default shadow
      elevation: 0, // To remove button's default elevation
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 12)
    ),
    icon: const Icon(Icons.timer_outlined, color: Colors.white, size: 21),
    label: const Text(
      'Start Quiz',
      style: TextStyle(
        fontFamily: 'Circo',
        fontSize: 18,
        color: Colors.white
      ),
    ),
  ),
)
              ],
            ),
        );
  }
}