import 'package:flutter/material.dart';
import 'package:lec_app_02/flag.dart';
import 'package:lec_app_02/lec64_Stateful.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ToggleBox(),
    );
  } 
}