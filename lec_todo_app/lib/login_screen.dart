import 'package:flutter/material.dart';
import 'package:lec_todo_app/main.dart';

class LoginScreen extends StatefulWidget{
  const LoginScreen({super.key});

  @override 
  State<LoginScreen> createState()=> _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>{
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormFieldState> usernameKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();
  bool showPassword = true;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [ Color.fromARGB(255, 209, 242, 244), Color.fromRGBO(2, 167, 177, 1)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("Welcome!",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800
            ),  
          ),
          const SizedBox(
            height: 15,
          ),
          const Text("Sign in to continue",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400
              ),  
            ),
          
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40
            ),
            child: TextFormField(
              controller: usernameController,
              key: usernameKey,
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "Enter Username";
                }
              },
              cursorColor: Colors.black,
              decoration: InputDecoration(
                labelText: "Username",
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                  )
                ),
                prefixIcon: const Icon(Icons.account_circle,color: Colors.black,)
              ),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40
            ),
            child: TextFormField(
              controller: passwordController,
              key: passwordKey,
              validator: (value) {
                if(value == null || value.isEmpty){
                  return "Enter Password";
                }else if(value != "User123"){
                  return "Incorrect Password";
                }
              },
              obscureText: showPassword,
              cursorColor: Colors.black,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                  )
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                  )
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(
                    width: 1.5,
                  )
                ),
                suffixIcon: IconButton(
                  onPressed: (){
                    setState(() {
                      if(showPassword == true){
                        showPassword = false;
                      }else{
                        showPassword = true;
                      }
                    });
                  },
                  icon: const Icon(Icons.remove_red_eye_sharp,
                  color: Colors.black,)
                ),
              prefixIcon: const Icon(Icons.lock,color: Colors.black,)
            ),
          ),
          ),
          const SizedBox(
            height: 35,
          ),
          ElevatedButton(
            onPressed: (){
              bool validateuUsername = usernameKey.currentState!.validate();
              bool vlaidatePassword = passwordKey.currentState!.validate();
              
              if(validateuUsername && vlaidatePassword){
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Login Succesful"),
                    backgroundColor: Colors.greenAccent,
                    )
                );
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return const ToDoApp();
                    },
                  )
                );
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Login Failed"),
                    backgroundColor: Colors.redAccent,
                  )
                );
              }  
            }, 
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              ),
              fixedSize: const Size(120, 50),
              backgroundColor:  const Color.fromARGB(255, 67, 153, 158)
            ),
          child: const Text("Login",
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),)
          )
          ],
        )
      )
    );
  }
}