import 'package:flutter/material.dart';

class TextFieldDemo extends StatefulWidget {
  const TextFieldDemo({super.key});

  @override
  State createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State {
  TextEditingController nameController = TextEditingController();
  TextEditingController locationController = TextEditingController();
  
  void _printdata() {
    //print("Companey name : ${nameController.text}");
  }

  @override
  void initState() {
    super.initState();
    //nameController.addListener(_printdata);
    //locationController.addListener(_printdata);
  }
  bool visibilityOfContainer = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Text Field"),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 50,
        ),
        child: Column(children: [
          
          TextField(
            controller: nameController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: "Enter Company Name"),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 30,
          ),
          TextField(
            controller: locationController,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                hintText: "Enter Company Name"),
            keyboardType: TextInputType.text,
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
            onPressed: () {
              visibilityOfContainer = true;
              setState(() {
              });
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
              fixedSize: const Size(140, 50)
            ), 
            child: const Text("Submit",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Visibility(
            visible: visibilityOfContainer,
            child: Column(
              children: [
                Text("Company Name : ${nameController.text}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
                              ),
                const SizedBox(
                   height: 30,
                ),
                Text("Company Location : ${locationController.text}",
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                              ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
