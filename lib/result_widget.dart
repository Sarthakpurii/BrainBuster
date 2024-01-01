
import 'package:brain_buster/data/question_data.dart';
import 'package:brain_buster/scrollable_summary.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen(this.selectedAns,{super.key});
  
  List<Map<String,Object>> getSummary(){
    final List<Map<String,Object>> summary=[];

    for(int i=0;i<=selectedAns.length;i++){
      summary.add({
        'quesNo':i+1,
        'quesText':question[i].question,
        'selectedAns':selectedAns[i],
        'Status':(question[i].ansList[0]==selectedAns[i])?'Correct Answer':'Wrong Answer'
      });
    }
    return summary;
  }
  final List<String> selectedAns;
  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Hello sir'),
          const SizedBox(height: 30,),
          ScrollableSummary(getSummary()),
          ElevatedButton(onPressed: (){}, child: const Text("Restart"))
        ],
      ),
    );
  }
}