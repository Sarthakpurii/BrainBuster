import 'package:brain_buster/answer_button.dart';
import 'package:brain_buster/data/question_data.dart';
import 'package:brain_buster/models/question_form.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionWidget extends StatefulWidget{
  const QuestionWidget(this.storeSelectedAns,{super.key});

  final void Function(String ans) storeSelectedAns;
  // final void Function() switchToResult;

  @override
  State<QuestionWidget> createState(){
    return _QuestionWidgetState();
  }
}

class _QuestionWidgetState extends State<QuestionWidget>{
  
  var curQuesIndex=0;

  void nextQues(ans){
    setState((){
      widget.storeSelectedAns(ans);
      curQuesIndex++;

    });
  }

  @override
  Widget build(context){
    final QuestionForm curQues=question[curQuesIndex];

    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(curQues.question,
          textAlign: TextAlign.center,
          style: GoogleFonts.merienda(
            // fontWeight: FontWeight.w700,
            // fontFamily: 'Cakelan',
            color: Colors.white,
            fontSize: 26,
          ),
          ),
          const SizedBox(height: 20,),
          ...curQues.getShuffledAns().map((item){
            return AnswerButton(item, (){
              nextQues(item);
            });
          })
          // AnswerButton('sdac', () { }),
          // AnswerButton('scac', () { }),
          // AnswerButton('sxa', () { }),
          // AnswerButton('xax', () { }),
        ],
      ),
    );
  }
}