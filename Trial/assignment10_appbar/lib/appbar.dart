import 'package:assignment10_appbar/appbar2.dart';
import 'package:flutter/material.dart';

class Assignment10_1 extends StatefulWidget{
  const Assignment10_1({super.key});

  @override
  State<Assignment10_1> createState()=> _Assignment10State();
  
}

class _Assignment10State extends State<Assignment10_1>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
            title: const Text("abc"),
            backgroundColor: Colors.blue,
            actions: [
              IconButton(
                icon: const Icon(Icons.search),
                onPressed: (){},
              ),
              IconButton(
                onPressed: (){},
                icon: const Icon(Icons.more_vert))
            ],
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Navigator.push(context,
                  MaterialPageRoute(
                    builder: (context)=> const Assignment10_2())
                  );
                },
                child: const Text("Next") )
            ],
          ),
        ),
    );
  }
}