import 'package:flutter/material.dart';
import 'package:travel_app/View/home_screen.dart';
import 'package:travel_app/View/onboard_1.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      
        debugShowCheckedModeBanner: false, 
        home: //SplashScreen()
        Home()
        
        );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Onboard1()),
          );
        },
        child: Container(
          width: double.infinity,
          height: double.infinity,
          color: const Color.fromRGBO(13, 110, 253, 1),
          child: const Center(
            child: Text("Travenor",
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 35,
                    color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
