import 'package:flutter/material.dart';

class Questions extends StatefulWidget{
  const Questions({super.key});

  @override
  State<Questions> createState(){
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions>{
  

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
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(285,30))),
            child: const Text('Thomas Jefferson')),
          const SizedBox(height: 2,),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(285,30))),
            child: const Text('George Washington')),
          const SizedBox(height: 2,),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(285,30))),
            child: const Text('Abraham Lincoln')),
          const SizedBox(height: 2,),
          ElevatedButton(
            onPressed: () {},
            style: const ButtonStyle(fixedSize: MaterialStatePropertyAll(Size(285,30))),
            child: const Text('John Adams')),
        ],
      ),
    );
  }
}