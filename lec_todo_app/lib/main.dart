import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:lec_todo_app/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

class ToDoApp extends StatefulWidget {
  const ToDoApp({super.key});

  @override
  State createState() => _ToDoAppState();
}

class _ToDoAppState extends State {
  
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  
  void submit(bool doEdit,[ToDoModelClass? toDoModelObj]){
    if(titleController.text.trim().isNotEmpty && descriptionController.text.trim().isNotEmpty && dateController.text.trim().isNotEmpty){
    if(!doEdit){
      cardList.add(
        ToDoModelClass(
          title: titleController.text.trim(), 
          description: descriptionController.text.trim(), 
          date: dateController.text.trim(),
        )
      );
    }else{
      toDoModelObj!.title = titleController.text.trim();
      toDoModelObj.description = descriptionController.text.trim();
      toDoModelObj.date = dateController.text.trim();
    }
    }
    clearController();
  }
  void clearController(){

    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }
  void deleteCard(ToDoModelClass toDoModelObj){
    cardList.remove(toDoModelObj);
    setState(() {});
  }

  void editCard(ToDoModelClass toDoModelObj){
    titleController.text = toDoModelObj.title;
    descriptionController.text = toDoModelObj.description;
    dateController.text = toDoModelObj.date;

    showBottomSheet(true,toDoModelObj);
  }

  void showBottomSheet(bool doEdit,[ToDoModelClass? toDoModelObj]) {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: MediaQuery.of(context).viewInsets,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Create Task",
                    style: GoogleFonts.quicksand(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text("Title",
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500, fontSize: 14)),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: titleController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Description",
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500, fontSize: 14)),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: descriptionController,
                      decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Date",
                        style: GoogleFonts.quicksand(
                            fontWeight: FontWeight.w500, fontSize: 14)),
                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: dateController,
                      readOnly: true,
                      onTap: () async {
                        //Pick Date from datePicker
                        DateTime? pickDate = await showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2023),
                          lastDate: DateTime(2030),
                        );
                        // Format the date into reqired format of the date i.e year month date
                        String formatedDate =
                            DateFormat.yMMMd().format(pickDate!);
                        setState(() {
                          dateController.text = formatedDate;
                        });
                      },
                      decoration: const InputDecoration(
                          suffixIcon: Icon(Icons.calendar_month),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)))),
                    ),
                  ]),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      if(doEdit == false){
                        submit(false);
                      }else{
                        submit(true, toDoModelObj);
                      }
                      Navigator.of(context).pop();
                      setState(() {});
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
                      foregroundColor: Colors.white,
                    ),
                    child: const Text("Submit"),
                  ),
                ],
              ),
            ),
          );
        });
  }

  List<ToDoModelClass> cardList = [
    ToDoModelClass(
        title: "Instagram API",
        description: "Contact to backend team",
        date: "26 Feb 2024")
  ];
  var colorList = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ToDo List"),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        foregroundColor: Colors.white,
      ),
      body: ListView.builder(
        itemCount: cardList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 10,
            ),
            child: Container(
              height: 112,
              width: 330,
              decoration: BoxDecoration(
                color: colorList[index % colorList.length],
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(10, 10),
                    color: Color.fromRGBO(2, 167, 177, 0.2),
                    blurRadius: 5,
                  ),
                ],
              ),
              child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // Row 1
                        Row(
                          children: [
                            Container(
                                height: 52,
                                width: 52,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(26),
                                  boxShadow: const [
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.1))
                                  ],
                                ),
                                child: const CircleAvatar(
                                  foregroundImage: NetworkImage(
                                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-8ERnKLAe9a1TKcev9UGXT3qRuvNb46iow&usqp=CAU",
                                  ),
                                )),
                            const SizedBox(
                              width: 10,
                            ),
                            Expanded(
                                child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${cardList[index].title}",
                                      style: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                      maxLines: 1,
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text(
                                      "${cardList[index].description}",
                                      style: GoogleFonts.quicksand(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14,
                                      ),
                                      maxLines: 2,
                                    ),
                                  ],
                                ),
                              ],
                            )),
                          ],
                        ),
                        //Row 2
                        Row(
                          children: [
                            Text(
                              cardList[index].date,
                              style: GoogleFonts.quicksand(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                              ),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {
                                editCard(cardList[index]);
                              },
                              child: const Icon(
                                Icons.edit_note_outlined,
                                color: Color.fromRGBO(2, 167, 177, 1),
                                size: 20,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                deleteCard(cardList[index]);
                              },
                              child: const Icon(
                                Icons.delete,
                                color: Color.fromRGBO(2, 167, 177, 1),
                                size: 20,
                              ),
                            )
                          ],
                        ),
                      ])),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showBottomSheet(false);
        },
        foregroundColor: const Color.fromRGBO(255, 255, 255, 1),
        backgroundColor: const Color.fromRGBO(2, 167, 177, 1),
        child: const Text("Add"),
      ),
    );
  }
}

class ToDoModelClass {
  String title;
  String description;
  String date;

  ToDoModelClass({
    required this.title,
    required this.description,
    required this.date,
  });
}
