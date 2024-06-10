import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:developer';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});
  
  @override
  State<StatefulWidget> createState() {
    return _MyApp();
  }
}
class _MyApp extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EphimiralDemo()
    );
  }
}

class EphimiralDemo extends StatefulWidget{
  const EphimiralDemo({super.key});

  @override
  State<StatefulWidget> createState() {
    return _EphimeralState();
  }
}
class _EphimeralState extends State<StatefulWidget>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("SetState Management"),
        centerTitle: true,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Course(courseName:"Java"),
          SizedBox(
            height: 50,
          ),
          Course(courseName:"Flutter"),
        ],
      ),
    );
  }
}

class Course extends StatefulWidget{
  final String courseName;
  const Course({super.key,required this.courseName});

  @override
  State<Course> createState() {
    return _CourseState();
  }
}

class _CourseState extends State<Course>{

  int courseCount = 0 ;
  @override
  Widget build(BuildContext context){
    log("In CourseState build");
    log(widget.courseName);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            setState(() {
              courseCount++;
            });
          },
          child: Container(
            height: 70,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(15)
            ),
            child: Center(
              child: Text(widget.courseName),
            ),
          ),
        ),
        Container(
          width: 80,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: Colors.black
            )
          ),
          child: Center(child: Text("Count: $courseCount"))
          ),
      ],
    );
  }
}
