import 'package:flutter/material.dart';
import 'package:quiz_app/page2.dart';
import 'package:quiz_app/questions.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});
  

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  int index = 0;
  int correct = 0;
  int incorrect = 0;
  Question quiz = Question();
  var clrList2 = [Colors.blue.shade300,Colors.blue.shade300,
  Colors.blue.shade300,Colors.blue.shade300];

  void colorChange(int optionSelected){
    if(quiz.answer[index]==optionSelected){
      clrList2[optionSelected-1]= Colors.green;
      correct++;
    }else{
      clrList2[optionSelected-1]= Colors.red;
      clrList2[quiz.answer[index]-1]= Colors.green;
      incorrect++;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tech Quiz",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Color.fromARGB(255, 215, 233, 247),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                right: 15
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Correct     ",
                    style: TextStyle(
                      color: Colors.lightGreen.shade900
                    ) ,
                    ),
                    Text("$correct",
                    style: TextStyle(
                      color: Colors.lightGreen.shade900
                    ) ,
                  ),
                  ],
                ),
            ),
              Padding(
                padding: const EdgeInsets.only(
                  right: 15
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Incorrect  ",
                    style: TextStyle(
                      color: Colors.red,
                    ) ,
                    ),
                    Text("$incorrect",
                    style: TextStyle(
                      color: Colors.red,
                    ) ,
                    ),
                  ],
                ),
              ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10.0,
                left: 15.0,
                right: 15.0,
              ),
              child: Container(
                height: 250,
                width: double.maxFinite,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.blue.shade300),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 25,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Question ${index + 1}/10",
                            style: const TextStyle(
                              fontSize: 22,
                              color: Colors.black,
                              fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30,
                        left: 15,
                        right: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              quiz.question[index],
                              style: const TextStyle(
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

            // Options 
            // Option 1
            Padding(
              padding: const EdgeInsets.only(
                top: 25.0,
                left: 15.0,
                right: 15.0,
              ),
              child: InkWell(
                onTap: () {
                  colorChange(1);
                  setState(() {  
                  });
                },
                child: Container(
                  height: 65,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: clrList2[0]),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          quiz.options[index][0] as String,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Option 2
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15.0,
                right: 15.0,
              ),
              child: InkWell(
                onTap: () {
                  colorChange(2);
                  setState(() {  
                  });
                },
                child: Container(
                  height: 65,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: clrList2[1]),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          quiz.options[index][1] as String,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Option 3
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15.0,
                right: 15.0,
              ),
              child: InkWell(
                onTap: () {
                  colorChange(3);
                  setState(() {  
                  });
                },
                child: Container(
                  height: 65,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: clrList2[2]),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          quiz.options[index][2] as String,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // Option 4
            Padding(
              padding: const EdgeInsets.only(
                top: 15.0,
                left: 15.0,
                right: 15.0,
              ),
              child: InkWell(
                onTap: () {
                  colorChange(4);
                  setState(() {  
                  });
                },
                child: Container(
                  height: 65,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: clrList2[3]),
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Row(
                      children: [
                        Text(
                          quiz.options[index][3] as String,
                          style: const TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            // Next Button
            Padding(
              padding: const EdgeInsets.only(
                top: 50,
                right: 15,
              ),
              child: ElevatedButton(
                onPressed: () {
                  if(index<9){
                    index++;
                    clrList2 = [Colors.blue.shade300,Colors.blue.shade300,
    Colors.blue.shade300,Colors.blue.shade300];
                    setState(() {
                    });}else{
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context)=> Page2(),),
                      );
                    }
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade400,
                    foregroundColor: Colors.black,
                    fixedSize: const Size(120, 60),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                child: const Row(
                  children: [
                    Text(
                      "Next ",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Icon(Icons.forward)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
