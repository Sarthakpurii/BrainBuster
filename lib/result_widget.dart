
import 'package:brain_buster/data/question_data.dart';
import 'package:brain_buster/scrollable_summary.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen(this.selectedAns,this.restart,{super.key});
  
  final List<String> selectedAns;
  final void Function() restart;

  List<Map<String,Object>> getSummary(){
    final List<Map<String,Object>> summary=[];

    for(int i=0;i<selectedAns.length;i++){
      summary.add({
        'quesNo':i+1,
        'quesText':question[i].question,
        'selectedAns':selectedAns[i],
        'Color':(question[i].ansList[0]==selectedAns[i])?Colors.green:Colors.red,
        'Status':(question[i].ansList[0]==selectedAns[i])?'Correct Answer':'Wrong Answer'
      });
    }
    return summary;
  }
  
  @override
  Widget build(context){
    final summaryData=getSummary();
    final noOfCorrect=summaryData.where((data){
      return data['Status']=='Correct Answer';
    }).length;

    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('You answered $noOfCorrect out of ${question.length} questions correctly!',
            textAlign: TextAlign.center,
            style: GoogleFonts.satisfy(
              color: Colors.white.withOpacity(0.8),
              
              fontSize: 26
            ),),
            const SizedBox(height: 30,),
            ScrollableSummary(summaryData),
            const SizedBox(height: 20,),
            Container(
              decoration: BoxDecoration(
            // color: Color.fromARGB(255, 74, 78, 105),
            borderRadius: BorderRadius.circular(32), // Same as button background
            boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.5),
          spreadRadius: 0,
          blurRadius: 6.5,
          offset: const Offset(0, 0), // changes position of shadow
        ),
            ],
          ),
              child: ElevatedButton.icon(
                icon: const Icon(Icons.restart_alt,color: Colors.white,),
                onPressed: restart,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation:0,
                  padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 12)
                ),
                label: const Text("Restart",
                style: TextStyle(
                  fontFamily: 'Circo',
                  fontSize: 18,
                  color: Colors.white
                ),)))
          ],
        ),
      ),
    );
  }
}