import 'package:flutter/material.dart';

class Assignment10_3 extends StatefulWidget{
  const Assignment10_3({super.key});

  @override
  State<Assignment10_3> createState()=> _Assignment10State();
}

class _Assignment10State extends State<Assignment10_3>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:const Text("Hello Core2Web"),
        backgroundColor: Colors.deepPurple,
      ),
    body: Center(
      child: Container(
        width: 360,
        height: 200,
        color: Colors.blue,
      ),
    ),
    );
  }
}