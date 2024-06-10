
import 'dart:developer';

import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget{
  const SplashScreen({super.key});

  @override 
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          log("Clicked on image");
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Image.asset("assets/splash_image.jpg",
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}