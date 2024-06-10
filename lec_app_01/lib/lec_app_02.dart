import 'package:flutter/material.dart';

class App2 extends StatelessWidget{
  const App2({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("App 2"),
        centerTitle: true,
        actions: const [
          Icon(Icons.favorite),
          Icon(Icons.more_horiz)
        ],
      ),
      body: const SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Text(
            "Flutter App",
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
        ),
      ),
    );
  }
}