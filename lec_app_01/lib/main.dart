import 'package:flutter/material.dart';
import 'package:lec_app_01/lec_app_01.dart';
import 'package:lec_app_01/lec_app_02.dart';
import 'package:lec_app_01/loginPage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: App2(),
    );
  }
}



