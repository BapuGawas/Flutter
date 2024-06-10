import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(245, 146, 69, 1),
        body: Center(
            child: SizedBox(
          height: 300,
          child: Image.asset(
            "Assets/01.jpg",
          ),
        )));
  }
}
