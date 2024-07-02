import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      color: const Color.fromARGB(255, 2, 23, 250),
      child: const Center(
        child: Text(
          "Tap'nPay",
          style: TextStyle(
            color: Colors.white,
            fontSize: 35
          ),
        ),
      ),
    );
  }
}