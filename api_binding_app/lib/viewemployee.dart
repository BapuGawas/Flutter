import 'dart:convert';

import "package:flutter/material.dart";
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;

class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {

  List<dynamic> empData = [];

  void getEmployeeData()async{
    var url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    var response = await http.get(url);

    var responseData = json.decode(response.body);
  
    empData = responseData['data'];

    setState(() {
    
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        title: const Text(
          "Employee",
          style: TextStyle(
            fontWeight: FontWeight.w700
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 20,
          left: 20,
          right: 20,
          bottom: 20
        ),
        child: ListView.builder(
          itemCount: empData.length,
          itemBuilder: (context, index) {
            return Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                
              ),
              child: Row(
                children: [
                  const SizedBox(width: 15,),
                  Text(
                    "${empData[index]["id"]}"
                  ),
                  const Spacer(),
                  Text(
                    "${empData[index]["employee_name"]}"
                  ),
                  const Spacer(),
                  Text(
                    "${empData[index]["employee_salary"]}"
                  ),
                  const SizedBox(width: 15,),
                ],
              ),
            );
          },
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getEmployeeData,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        child: const Text("Get",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18
          ),
        ),
        ),
        
    );
  }  
}