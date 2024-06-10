import 'package:flutter/material.dart';

class Assignment10_2 extends StatefulWidget{
  const Assignment10_2({super.key});

  @override
  State<Assignment10_2> createState()=> _Assignment10State();
  
}

class _Assignment10State extends State<Assignment10_2>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
            title: const Center(
              child: const Text("abc")),
            backgroundColor: Colors.blue,
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: (){},
              ),
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.more_vert))
            ],
        ),
    );
  }
}