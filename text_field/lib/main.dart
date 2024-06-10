import 'package:flutter/material.dart';
import 'package:flutter_application_1/lec_textfild.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override 
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter Demo",
      //home: HomePage(title: "Add Name",),
      home: TextFieldDemo(),
    );
  }
}
class HomePage extends StatefulWidget{
  const HomePage({super.key,required this.title});
  final String title;

  @override 
  State<HomePage> createState()=> _HomePageState();
}
class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          TextField(
            //controller: _nameTextEditingController,
            //focusNode: _nameFocusNode,
            decoration: InputDecoration(
              hintText: "Enter Name",
              border: InputBorder.none,
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide:  const BorderSide(
                  color: Colors.blue,
                )
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: const BorderSide(
                  color:  Colors.pink,
                )
              )
            ),
            cursorColor: Colors.amber,
            textInputAction: TextInputAction.done,
            keyboardType: TextInputType.phone,
            onChanged: (value) {
              print("value = $value");
            },
            onSubmitted: (value) {
              print("Data Submited");
            },
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: const Text("Add"),
      ),
    );
  }
}