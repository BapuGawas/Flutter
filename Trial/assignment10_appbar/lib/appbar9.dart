import 'package:flutter/material.dart';

class Assignment10_9 extends StatelessWidget{
  const Assignment10_9({super.key});

  Widget build(BuildContext context){
    return Scaffold(
      body:Center(
          child: Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.red.shade900,
                width: 5.0,
              ),
              borderRadius: BorderRadius.circular(20)
            ),
          ),
        ),
      );
  }
}