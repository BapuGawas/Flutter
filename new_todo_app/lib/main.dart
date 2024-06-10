import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

void main() {
  runApp(const ToDoAppUI());
}

class ToDoAppUI extends StatefulWidget {
  const ToDoAppUI({super.key});

  @override
  State<ToDoAppUI> createState()=> _ToDoAppUIState();
}

class _ToDoAppUIState extends State<ToDoAppUI>{
  bool chkBox = false;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color.fromRGBO(111, 81, 255, 1),
        body: Padding(
          padding: const EdgeInsets.only(
            top: 100
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment:  CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Good Morning",
                  style: GoogleFonts.quicksand(
                    color:Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 22
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 35),
                child: Text(
                  "Core2Web",
                  style: GoogleFonts.quicksand(
                    color:Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 30
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(217, 217, 217, 1),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)
                    )
                  ),
                  width: double.infinity,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      Text("CREATE TASKS",
                        style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.w500,
                          fontSize: 15
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Container(
                          padding: const EdgeInsets.only(top: 20),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40)
                            )
                          ),
                          child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Slidable(
                                closeOnScroll: true,
                                endActionPane: ActionPane(
                                  extentRatio: 0.2,
                                  motion: DrawerMotion(),
                                  children: [
                                    Expanded(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                                        children: [
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          GestureDetector(
                                            child: Container(
                                              padding: EdgeInsets.all(10),
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(89, 57, 241, 1),
                                                borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: const Icon(
                                                Icons.edit,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 2,
                                          ),
                                          GestureDetector(
                                            child: Container(
                                              padding: const EdgeInsets.all(10),
                                              height: 40,
                                              width: 40,
                                              decoration: BoxDecoration(
                                                color: const Color.fromRGBO(89, 57, 241, 1),
                                                borderRadius: BorderRadius.circular(20)
                                              ),
                                              child: const Icon(
                                                Icons.delete,
                                                color: Colors.white,
                                                size: 20,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                  ),
                                  key: ValueKey(index),
                                  child: Container(
                                    margin: const EdgeInsets.only(top: 10),
                                    padding: const EdgeInsets.only(
                                      left: 20,
                                      bottom: 20,                                     
                                      right: 20,
                                    ),
                                    decoration: BoxDecoration(
                                      color: const Color.fromRGBO(255, 255, 255, 1),
                                      border: Border.all(
                                        color: const Color.fromRGBO(0, 0, 0, 0.05),
                                        width: 0.5,
                                      ),
                                      boxShadow: const [
                                        BoxShadow(
                                          offset: Offset(0, 4),
                                          blurRadius: 20,
                                          color: Color.fromRGBO(0, 0, 0, 0.13),
                                        )
                                      ],
                                      borderRadius:const BorderRadius.all(Radius.zero),
                                    ),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              height: 60,
                                              width: 60,
                                              decoration: const BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Color.fromRGBO(217, 217, 217, 1),
                                              ),
                                              //child: Image.network("https://www.shareicon.net/data/2017/02/07/878410_check_512x512.png"),
                                            ),
                                            const SizedBox(
                                              width: 20,
                                            ),
                                            SizedBox(
                                              width: 170,
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                children: [
                                                  Text("Title",
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w500,
                                                    fontSize:15,
                                                    color:Colors.black,
                                                  ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                  Text("Description",
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize:12,
                                                    color:const Color.fromRGBO(0, 0, 0, 0.7),
                                                  ),
                                                  ),
                                                  const SizedBox(
                                                    height: 5,
                                                  ),
                                                   Text("15 March 2024",
                                                  style: GoogleFonts.inter(
                                                    fontWeight: FontWeight.w400,
                                                    fontSize:12,
                                                    color:const Color.fromRGBO(0, 0, 0, 0.7),
                                                  ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Checkbox(
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(10)
                                              ),
                                              activeColor: Colors.green,
                                              value: chkBox,
                                              onChanged: (value) {
                                                chkBox = true;
                                                setState(() {
                                                  
                                                });
                                              },
                                            )
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  
                              );
                            },
                          ),
                        ),
                      )
                    ],
                  ) ,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}