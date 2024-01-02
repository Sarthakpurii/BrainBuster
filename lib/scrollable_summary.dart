import 'package:flutter/material.dart';

class ScrollableSummary extends StatelessWidget{
  const ScrollableSummary(this.summary,{super.key});

  final List<Map<String,Object>> summary;

  @override
  Widget build(context){
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: summary.map((data) {
            return Row(
              children: [
                Text(((data['quesNo'] as int)).toString()),
                Column(
                  children: [
                    Text(data['quesText'] as String),
                    Text(data['selectedAns'] as String),
                    Text(data['Status'] as String)
                  ],
                )
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}