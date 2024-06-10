import 'package:flutter/material.dart';
  
class ChangeColor extends StatefulWidget{
  const ChangeColor({super.key});

  @override
  State<ChangeColor> createState()=> _ChangeColor();
}
class _ChangeColor extends State<ChangeColor>{
  var no = 0; 
  var lst = [Colors.indigoAccent,Colors.amberAccent,Colors.blueAccent,Colors.cyanAccent,Colors.greenAccent];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
      ),
      body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 250,
                height: 250,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(20)),
                  color: lst[no],
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  setState(() {
                    no = no+1;
                    if(no==5){
                      no = 0;
                    } 
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  fixedSize: const Size(200, 50),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                  elevation: 10,
                  shadowColor: Colors.black,
                ),
                child: const Text("Click"),
                ), 
            ],            
          ),
        )
      );
  }
}

