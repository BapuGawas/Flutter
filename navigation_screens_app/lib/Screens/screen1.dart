import 'package:flutter/material.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Screen 1"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                
              }, 
              child: const Text("Screen 2")
            ),
        
            const SizedBox(height: 20,) ,
        
            ElevatedButton(
              onPressed: () {
                
              }, 
              child: const Text("Previous Screen")
            ), 
          ],
        ),
      ),
    );
  }
}