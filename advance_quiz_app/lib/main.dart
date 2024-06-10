import 'package:advance_quiz_app/home_screen.dart';
import 'package:advance_quiz_app/question_screen.dart';
import 'package:advance_quiz_app/result_screen.dart';
//import 'package:advance_quiz_app/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Result()
    );
  }
}