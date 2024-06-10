import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget{

  const MyApp({super.key});

  @override 
  State createState()=> _MyAppState();
}

class _MyAppState extends State{
  int javaCount = 0;
  int flutterCount = 0;

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    javaCount++;
                    setState(() {});
                  },
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black
                      )
                    ),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRtSd1lm1-Gjf9xQFbmffJmXy1QlTz-0ZwENjCa2e4MupKth3cUHumNwc7kitKHrFP-sc4&usqp=CAU",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text("$javaCount",
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                    color: Colors.black
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    flutterCount++;
                    setState(() {});
                  },
                  child: Container(
                    width: 300,
                    height: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.black
                      )
                    ),
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnQunCsK8cIdDIQh06j7l0dqEKC1GhJ7iFbXP50cQWXg&s",
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Text("$flutterCount",
                  style: const TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.w800,
                    color: Colors.black
                  ),
                )
              ],
            ),
          ],
        )
        )
    );
  }
}