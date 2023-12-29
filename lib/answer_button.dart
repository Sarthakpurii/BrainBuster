
import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton(this.ansText,this.ansFunc,{super.key});

  final String ansText;
  final void Function() ansFunc;
  @override
  Widget build(context){
    return Column(
      children: [ElevatedButton(
        onPressed: ansFunc,
        style: const ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(285,30))),
        child: Text(ansText)),
        const SizedBox(height: 2,)]
    );
  }
}