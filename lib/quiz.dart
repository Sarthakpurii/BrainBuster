import 'package:brain_buster/gradient_container.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{
  @override
  Widget build(context){
    return const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: GradientContainer([
          Color.fromARGB(255, 236, 216, 39),Color.fromARGB(255, 58, 249, 233)
        ]
        )
        // body: Questions(),
      ),
    );
  }
}