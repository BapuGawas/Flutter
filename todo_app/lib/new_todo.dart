import 'package:flutter/material.dart';
import 'package:todo_app/todo_model_class.dart';


class ToDoApp extends StatefulWidget{
  const ToDoApp({super.key});

  @override 
  State<ToDoApp> createState()=> _ToDoAppState();
}

class _ToDoAppState extends State<ToDoApp>{
  //Text Editing Controllers
  TextEditingController dateController = TextEditingController();
  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  void showBottomSheet(bool doedit, [ToDoModelClass? toDoModelObj]){
    showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.0),
          topRight: Radius.circular(30.0), 
        ),
      ),
      isDismissible: true,
      context: context,
      builder: (constex){
        return Padding(
          padding: EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                "Create Task",
                //style: ,
              ),
              const SizedBox(
                height: 12,
              ),
              Column(
                crossAxisAlignment:  CrossAxisAlignment.start,
                children: [
                  Text("Title",
                  //style: ,  
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: titleController,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1)
                      )
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.purpleAccent
                      ),
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Description",
                  //style: 
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: descriptionController,
                  maxLines: 4,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1)
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.purpleAccent,
                      ),
                      borderRadius: BorderRadius.circular(12)
                    )
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Date",
                  //style:
                ),
                const SizedBox(
                  height: 3,
                ),
                TextField(
                  controller: dateController,
                  readOnly: true,
                  decoration: InputDecoration(
                    suffixIcon: const Icon(Icons.date_range_rounded),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(
                        color: Color.fromRGBO(0, 139, 148, 1)
                      )
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Colors.purpleAccent,
                      ),
                      borderRadius: BorderRadius.circular(12),
                    )
                  ),
                  onTap: ()async{
                    DateTime? pickeddate = await showDatePicker(
                      context: context, 
                      firstDate: DateTime(2024), 
                      lastDate: DateTime(2025),
                      initialDate: DateTime.now(),
                    );
                    //String formatDate = DateFormat.yMMMd().format(pickeddate!);

                    setState(() {
                      //dateController.text = formatDate;
                    });
                  },                  
                )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 300,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    backgroundColor: Color.fromRGBO(0, 139, 148, 1),
                  ),
                  onPressed: (){
                    //doedit? submit(doedit,toDoModelObj): submit(doedit);
                    //Navigator.of(context).pop();
                  },
                  child: Text(
                    "Submit",
                    //style: ,
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              )
            ],
          ),
          
          );
      }
    );
  }

  var listOfColors = [
    const Color.fromRGBO(250, 232, 232, 1),
    const Color.fromRGBO(232, 237, 250, 1),
    const Color.fromRGBO(250, 249, 232, 1),
    const Color.fromRGBO(250, 232, 250, 1),
  ];
  List<ToDoModelClass> todoList = [
    ToDoModelClass(
      title: "Take notes", 
      description: "Take notes of every app you write", 
      date: "10 July 2023"),
    ToDoModelClass(
      title: "Arrange Meeting", 
      description: "Meet the backend team", 
      date: "10 July 2023"), 
  ];

  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(2, 167, 177, 1),
        centerTitle: true,
        title: Text("TO-DO APP",
          //style: ,
        ),
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index){
          return Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: listOfColors[index % listOfColors.length],
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, 10),
                    color: Color.fromRGBO(0, 0, 0, 0.1),
                    blurRadius: 10,
                  )
                ],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    //1
                    Row(
                      children: [
                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.network("https://img.freepik.com/free-vector/cute-koala-cartoon-character_1308-132636.jpg?size=626&ext=jpg&ga=GA1.1.1395880969.1709337600&semt=sph"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                todoList[index].title,
                                // style:
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                todoList[index].description,
                                // style:
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 14.0,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: Row(
                        children: [
                          Text(
                            todoList[index].date,
                            //style: ,
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: (){
                                  //editTask(todoList.index);
                                },
                                child: Icon(
                                  Icons.edit_outlined,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: (){
                                  //removeTasks(todoList.index);
                                },
                                child: Icon(
                                  Icons.delete_outline,
                                  color: Color.fromRGBO(0, 139, 148, 1),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],),
              ),
            ),
          );
        }
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromRGBO(0, 139, 148, 1),
        onPressed: (){
          //clearController();
          showBottomSheet(false);
        },
      ),
    );
  }
}