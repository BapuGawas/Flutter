import 'dart:convert';

import 'package:api_binding_with_madelclass/employee_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ViewEmployee extends StatefulWidget {
  const ViewEmployee({super.key});

  @override
  State<ViewEmployee> createState() => _ViewEmployeeState();
}

class _ViewEmployeeState extends State<ViewEmployee> {

  List<Data> empData = [];

  void getData()async{
    var url = Uri.parse("https://dummy.restapiexample.com/api/v1/employees");
    var responce = await http.get(url);

    var responceData = jsonDecode(responce.body);

    EmployeeModel empModel = EmployeeModel(responceData);

    setState(() {
      empData  = empModel.data!;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text("Employee Data"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: empData.length,
        itemBuilder: (context, index) {
          return Row(
            
            children: [
              const SizedBox(width: 15,),
              Text("${empData[index].id}"),
              const SizedBox(width: 15,),
              Text("${empData[index].empName}"),
              const Spacer(),
              Text("${empData[index].empSal}"),
              const SizedBox(width: 15,),
            ],
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        onPressed: () {
          getData();
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}