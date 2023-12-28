import 'package:brain_buster/gradient_container.dart';
import 'package:flutter/material.dart';



void main(){
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          Color.fromARGB(255, 236, 216, 39),Color.fromARGB(255, 58, 249, 233)
        ]
        )
      ),
    )
  );
}