import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override 
  State createState()=> _LoginScreenState();

}
class _LoginScreenState extends State{
  GlobalKey<FormFieldState> usernameKey = GlobalKey<FormFieldState>();

  TextEditingController usernameController = TextEditingController();
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title:  const Text("Appbar")
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          TextFormField(
            controller: usernameController,
            key: usernameKey,
            validator: (value){
              if(value == null || value == usernameController.text.isEmpty){
                return "Enter Username";
              }else{
                return null;
              }
            },
            decoration: const InputDecoration(
              label: Text("Username"),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 2)
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(width: 2)
              ),
            ),
            
          ),
          ElevatedButton(onPressed: (){
            bool usernameValidater = usernameKey.currentState!.validate();
            if(usernameValidater){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Login Succesful!!"))
              );
            }else{
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Login Failed"))
              );
            }
          },
            child: Text("Submit"),
            )
        ],
      ),
    );
  }
}  