import 'package:flutter/material.dart';

class Assignment10_10 extends StatelessWidget{
  const Assignment10_10({super.key});

  @override
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
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20)
                ),
                color: const Color.fromARGB(255, 167, 216, 192),
              ),
            ),
          ),
        );
  }
}