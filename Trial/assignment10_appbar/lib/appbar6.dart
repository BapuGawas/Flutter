import 'package:flutter/material.dart';

class Assignment10_6 extends StatefulWidget{
  const Assignment10_6({super.key});

  @override
  State<Assignment10_6> createState()=> _Assignment10State();
}

class _Assignment10State extends State<Assignment10_6>{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hello Core2Web"),
      ),
      body: SizedBox(
          width: double.infinity,
          height: double.infinity,
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.amber,
                  child: const Center(
                    child: Text("1")
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.blueAccent,
                  child: const Center(
                    child: Text("2")
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 44, 255, 7),
                  child: const Center(
                    child: Text("3")
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 255, 7, 255),
                  child: const Center(
                    child: Text("4")
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 61, 191, 137),
                  child: const Center(
                    child: Text("5")
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 207, 51, 27),
                  child: const Center(
                    child: Text("6")
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(194, 255, 7, 152),
                  child: const Center(
                    child: Text("7")
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(97, 83, 94, 158),
                  child: const Center(
                    child: Text("8")
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 157, 43, 196),
                  child: const Center(
                    child: Text("9")
                  ),
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 81, 125, 131),
                  child: const Center(
                    child: Text("10")
                  ),
                )
              ],
            ),
          
        ),
      );
  }
}