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
  List<Color> gradientbackground=const [Color.fromARGB(255, 227, 127, 118),Color.fromARGB(255, 169, 74, 65)];

//Switches from Result Screen to Start Screen
void restartApp(){
  setState(() {
    gradientbackground=const [Color.fromARGB(255, 227, 127, 118),Color.fromARGB(255, 169, 74, 65)];
    activeScreen=Welcome(switchScreen);
  });
}
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
        gradientbackground=const [Color.fromARGB(255, 179, 91, 83),Color.fromARGB(255, 150, 60, 52)];
        activeScreen=ResultScreen(selectedAns,restartApp);
        selectedAns=[];
    });
    }
  }

  @override
  void initState() {
    activeScreen=Welcome(switchScreen);
//     activeScreen=ResultScreen(const [
//   "Thomas Jefferson",
//   "Rome",
//   "H2O",
//   "Martin Scorsese",
//   "11",
//   "1942",
//   "Mississippi",
//   "Ruby",
//   "Elton John",
//   "Tennis"
// ]
// ,restartApp);
    super.initState();
  }

  @override
  Widget build(context){
    
    return MaterialApp(
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors:gradientbackground,
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