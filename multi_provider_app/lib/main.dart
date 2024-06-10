// Multi Provider

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Employee(empName: "Kanha", empID: 10);
          },
        ),
        ChangeNotifierProvider(
          create: (context) {
            return Project(projectName: "Health Care", devType: "Backend");
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyPage(),
      ),
    );
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(Provider.of<Employee>(context).empName),
            const SizedBox(
              height: 10,
            ),
            Text("${Provider.of<Employee>(context).empID}"),
            const SizedBox(
              height: 15,
            ),
            Text(Provider.of<Project>(context).projectName),
            const SizedBox(
              height: 10,
            ),
            Text(Provider.of<Project>(context).devType),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () {
                  Provider.of<Project>(context, listen: false)
                      .changeProject("ToDo", "Flutter");
                },
                child: const Text("Change Data")),
          ],
        ),
      ),
    );
  }
}

class Employee {
  String empName;
  int empID;

  Employee({required this.empName, required this.empID});
}

class Project with ChangeNotifier {
  String projectName;
  String devType;

  Project({required this.projectName, required this.devType});

  void changeProject(String projectName, String devType) {
    this.projectName = projectName;
    this.devType = devType;
    notifyListeners();
  }
}
