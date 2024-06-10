// Login Page 

import 'package:flutter/material.dart';

class Trial extends StatelessWidget{
  const Trial({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.orange.shade200,
          ),
          Positioned(
            top: 150,
            right: 60,
            child: Container(
              width: 450,
              height: 500,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(250),
                color: Colors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Positioned(
                    
                    child: Container(
                      padding: const EdgeInsets.only(
                        left:50,
                      ),
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 40,
                          color: Colors.orange,
                        ),
                      ),
                    )
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Positioned(
                    child: Center(
                      
                      child: Container(
                        padding: const EdgeInsets.only(
                          right: 25,
                          left: 130,
                        ),
                        child: const TextField(
                          
                          decoration: InputDecoration(
                            hintText: "Email",
                            filled: true,
                            fillColor: Color.fromARGB(255, 239, 211, 175),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                            ),
                            
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Positioned(
                    child: Center(
                      
                      child: Container(
                        padding: const EdgeInsets.only(
                          right: 25,
                          left: 130,
                        ),
                        child: const TextField(
                          
                          decoration: InputDecoration(
                            hintText: "Password",
                            filled: true,
                            fillColor: Color.fromARGB(255, 239, 211, 175),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(25)),
                            ),
                            
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),  
            ),
          ),
          Positioned(
            bottom: 50,
            right: 40,
            child: ElevatedButton(
              onPressed: (){},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.5),
                ),
                backgroundColor: Colors.orange,
                shadowColor: Colors.black,
                elevation: 15
              ),
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),  
              ),
            ),
          ),
          Positioned(
            bottom: 200,
            right:120,
            child: TextButton(
              onPressed: (){},
              child: const Text(
                "Forgot Password?",
                style: TextStyle(
                  color: Colors.orange,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ) 
            ),
          ),
          Positioned(
            child: Container(
              padding: const EdgeInsets.only(
                top:20
              ),
              child: Image.network(
                "https://cdn.pixabay.com/photo/2018/04/28/19/53/cartoon-3358118_960_720.png",
              ),
            ),
          )
        ],
      ),
    );
  }
}