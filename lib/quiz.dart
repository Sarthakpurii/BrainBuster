import 'package:brain_buster/gradient_container.dart';
import 'package:brain_buster/questions.dart';
import 'package:flutter/material.dart';

class Quiz extends StatefulWidget{
  const Quiz({super.key});

  @override
  State<Quiz> createState(){
    return _QuizState();
  }
}

class _QuizState extends State<Quiz>{

  Widget? activeScreen;
  @override
  void initState() {
    activeScreen=GradientContainer(switchScreen);
    super.initState();
  }
  void switchScreen(){
    setState((){
      activeScreen=const Questions();
    });
  }

  @override
  Widget build(context){
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: activeScreen
        // body: Questions(),
      ),
    );
  }
}