
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget{
  const ResultScreen(this.selectedAns,{super.key});

  final List<String> selectedAns;
  @override
  Widget build(context){
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Text('Hello sir'),
          const SizedBox(height: 30,),
          const Text('hello again'),
          ElevatedButton(onPressed: (){}, child: const Text("Restart"))
        ],
      ),
    );
  }
}