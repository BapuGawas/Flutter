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
        ChangeNotifierProvider(
          create: (context) {
            return Login(username: "Kanha@123", password: "123Kanha");
          },
        ),
        ChangeNotifierProxyProvider<Login,Employee>(
          create: (context) {
            return Employee(
              empId: 12, 
              empName: "Kanha", 
              username: Provider.of<Login>(context,listen: false).username, 
              password: Provider.of<Login>(context, listen: false).password,
              );
          },
          update: (context, value, previous) {
            return Employee(
              empId: 12, 
              empName: "Kanha", 
              username: value.username, 
              password: value.password
              );
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

class Home extends StatefulWidget{
  const Home({super.key});

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

            Consumer(builder: (context, value, child) {
              return Text(Provider.of<Employee>(context).password);
            },),
            
            const SizedBox(height: 25,),

            ElevatedButton(onPressed:() {
              Provider.of<Login>(context,listen: false).changePassword("ABC123");
            }, 
            child: Text("Change Password")),

          ],
        ),
      ),
    );
  }
}
class Login with ChangeNotifier{
  String username;
  String password;

  Login({
    required this.username,
    required this.password,
    });

  void changePassword(String password){
    this.password = password;
    notifyListeners();
  }
  
}

class Employee with ChangeNotifier{
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