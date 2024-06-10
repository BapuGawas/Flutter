import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MultiProvider(
      providers: [
        Provider(
          create: (context) {
            return Login(username: "Kanha@123", password: "123Kanha");
          },
        ),
        ProxyProvider<Login,Employee>(
          update: (context, login, employee) {
            return Employee(empId: 12, 
            empName: "Knaha", 
            username: login.username, 
            password: Provider.of<Login>(context).password,
            );
          },
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget{
  Home({super.key});

  @override 
  State<Home> createState()=> _HomeState();
}

class _HomeState extends State<Home>{

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Proy Provider"),
        backgroundColor:  Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(Provider.of<Employee>(context).empName),
            const SizedBox(height: 20,),

            Text("${Provider.of<Employee>(context).empId}"),
            const SizedBox(height: 20,),

            Text(Provider.of<Employee>(context).username),
            const SizedBox(height: 20,),

            Text(Provider.of<Employee>(context).password),

          ],
        ),
      ),
    );
  }
}
class Login {
  String username;
  String password;

  Login({
    required this.username,
    required this.password,
    });
}

class Employee {
  int empId;
  String empName;
  String username;
  String  password;

  Employee({
    required this.empId,
    required this.empName,
    required this.username,
    required this.password,
  });
}