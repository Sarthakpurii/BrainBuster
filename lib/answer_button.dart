
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AnswerButton extends StatelessWidget{
  const AnswerButton(this.ansText,this.ansFunc,{super.key});

  final String ansText;
  final void Function() ansFunc;
  @override
  Widget build(context){
    return Column(
        children: [Container(
          height: 45,
          decoration: BoxDecoration(
            gradient: const LinearGradient(colors: [Color.fromARGB(255, 74, 78, 105),Color.fromARGB(255, 71, 78, 123)]),
        borderRadius: BorderRadius.circular(32),
        boxShadow: [BoxShadow(blurRadius: 4,
        color: Colors.black.withOpacity(0.25),
        offset: const Offset(0,0),
        spreadRadius: 0
        )]
      ),
          child: ElevatedButton(
            onPressed: ansFunc,
            style: ElevatedButton.styleFrom(fixedSize: const Size(285,30),
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent, // To remove button's default shadow
            elevation: 0,),
            
            child: Text(ansText,style: GoogleFonts.lora(
              color: Colors.white
            ),)),
        ),
          const SizedBox(height: 8,)]
      );
  }
}