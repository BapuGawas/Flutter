import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (context) {
        return Company(companyName: "Google",empCount: 250);
      },
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainApp(),
      ),
    );
  }

}
class Company{
  final String companyName;
  final int empCount;

  Company({
    required this.companyName,
    required this.empCount,
  });
}

class MainApp extends StatefulWidget{
  const MainApp({super.key});

  @override 
  State<MainApp> createState()=> _MainAppState();
}

class _MainAppState extends State<MainApp>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Provider"
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(Provider.of<Company>(context).companyName),
              const SizedBox(
                width: 20,
              ),
              Text("${Provider.of<Company>(context).empCount}"),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          
        ],
      ),
    );
  }
}