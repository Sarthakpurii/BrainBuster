import 'package:brain_buster/questions_widget.dart';
import 'package:brain_buster/result_widget.dart';
import 'package:brain_buster/welcome.dart';
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
  List<String> selectedAns=[];


//Switches to Question Widget
  void switchScreen(){
    setState((){
      activeScreen=QuestionWidget(storeSelectedAns);
    });
  }

  //Stores ans and switches to Result Widget
  void storeSelectedAns(String ans){
    selectedAns.add(ans);
    if (selectedAns.length==10){
      setState(() {
        selectedAns=[];
        activeScreen=ResultScreen(selectedAns);
    });
    }
  }

  @override
  void initState() {
    activeScreen=Welcome(switchScreen);
    super.initState();
  }

  @override
  Widget build(context){
    
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors:[
          Color.fromARGB(255, 236, 216, 39),Color.fromARGB(255, 58, 249, 233)
        ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight),
          ),
          child: activeScreen,
        // body: Questions(),
        ),
      )
    );
  }
}