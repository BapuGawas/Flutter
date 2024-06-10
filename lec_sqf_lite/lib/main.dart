import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class  Employee {
  final int empId;
  final String name;
  final double sal;

  Employee({
    required this.empId,
    required this.name,
    required this.sal,
  });
  Map<String,dynamic> employeeMap(){
    return {
      'empId': empId,
      'name': name,
      'sal': sal,
    };
  }
}
Future<void> insertEmployeeData(Employee emp)async{
  final localDB = await database;
  
  localDB.insert(
    'Employee',
    emp.employeeMap(),
    conflictAlgorithm: ConflictAlgorithm.replace
  );
}
Future getEmployeeData()async {
  final localDb = await database;

  List listMap =await localDb.query('Employee');

  return List.generate(listMap.length, (index) {
    return listMap[index];
  });
}

Future<void> deleteEmpData(Employee emp)async{
  final localDb = await database;

  await localDb.delete(
    'Employee',
    where:"empId = ?",
    whereArgs:[emp.empId],
  );
}

dynamic database;
void main() async {
  runApp(const MyApp());

  database = openDatabase(
    join(await getDatabasesPath(),"employeeDB.db"),
    version: 1,
    onCreate: (db, version) {
      db.execute('''CREATE TABLE Employee(
        empId INT PRIMARY KEY,
        name TEXT, 
        sal REAL
      )''');
    },
  );
  Employee emp1 = Employee(
    empId: 001, 
    name: "Kanha", 
    sal: 7.54);
  Employee emp2 = Employee(
    empId: 002, 
    name: "Rahul", 
    sal: 2.68);
  await insertEmployeeData(emp1);
  await insertEmployeeData(emp2);

  print(await getEmployeeData());

  //await deleteEmpData(emp1);

  print(await getEmployeeData());
} 
  
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: const Text("Welcome")
        )
      ),
    );
    
  }
}