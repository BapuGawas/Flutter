import 'package:flutter/material.dart';

class Assignment10_4 extends StatefulWidget{
  const Assignment10_4({super.key});

  @override
  State<Assignment10_4> createState()=> _Assignment10State();
}

class _Assignment10State extends State<Assignment10_4>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Core2Web"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              color: Colors.amber,
            ),
            const SizedBox(
              width: 30,
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.redAccent,
            )
          ],
        ),
      ),
    );
  }
}