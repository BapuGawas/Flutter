import 'package:flutter/material.dart';
import 'package:home_rental_ui/View/get_started.dart';
import 'package:home_rental_ui/View/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GetStarted(),
      //HomeScreen()
    );
  }
}