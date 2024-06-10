import 'package:flutter/material.dart';
import 'package:navigation_screens_app/Screens/screen1.dart';
import 'package:navigation_screens_app/Screens/screen2.dart';
import 'package:navigation_screens_app/Screens/screen3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:  false,
      routes: {
        "/screen1":(context) {
          return  Screen1();
        },
        "/screen2":(context) {
          return  Screen2();
        },
        /*"/screen3":(context) {
          return  Screen3();
        }*/
      },
      home: Scaffold(
        appBar: AppBar(
        title: const Text("Navigotor app"),
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
                Navigator.of(context).pushNamed("/screen1");
              }, 
              child: const Text("Screen 1")
            ),
        
            const SizedBox(height: 20,) ,
        
            ElevatedButton(
              onPressed: () {
                
              }, 
              child: const Text("Screen 2")
            ), 

            const SizedBox(height: 20,) ,
        
            ElevatedButton(
              onPressed: () {
                
              }, 
              child: const Text("Screen 3")
            ), 
          ],
        ),
      ),
      ),
    );
  }

}