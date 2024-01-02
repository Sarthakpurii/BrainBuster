
import 'package:brain_buster/data/question_data.dart';
import 'package:brain_buster/scrollable_summary.dart';
import 'package:flutter/material.dart';

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
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text('You answered $noOfCorrect out of ${question.length} questions correcly!'),
          const SizedBox(height: 30,),
          ScrollableSummary(summaryData),
          ElevatedButton(onPressed: restart, child: const Text("Restart"))
        ],
      ),
    );
  }
}