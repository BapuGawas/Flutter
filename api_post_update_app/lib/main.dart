import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              postEmployeeData();
              
            },
            child: const Text("Post")),
        ),
      ),
    );
  }
  void postEmployeeData()async{
    Uri url = Uri.parse("https://dummy.restapiexample.com/api/v1/delete/2");
    

    Map<String,String> mapData = {
      "name": "Rahul",
      "slary": "50000",
      "age": "25",
    };
    var responce = await http.delete(url,body: mapData);

    log(responce.body);
  }
}