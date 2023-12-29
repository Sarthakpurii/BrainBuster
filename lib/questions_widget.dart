import 'package:brain_buster/answer_button.dart';
import 'package:flutter/material.dart';

class QuestionWidget extends StatefulWidget{
  const QuestionWidget({super.key});

  @override
  State<QuestionWidget> createState(){
    return _QuestionWidgetState();
  }
}

class _QuestionWidgetState extends State<QuestionWidget>{
  

  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Who was the first president of the United States?',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 26,
          ),
          ),
          const SizedBox(height: 20,),
          AnswerButton('sdac', () { }),
          AnswerButton('scac', () { }),
          AnswerButton('sxa', () { }),
          AnswerButton('xax', () { }),
        ],
      ),
    );
  }
}