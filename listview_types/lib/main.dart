import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListViewDemo(),
      ),
    );
  }
}

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  List imageList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn0SrlPrj9sBtOYzOlfvM_tKxxwCcCehEWvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn0SrlPrj9sBtOYzOlfvM_tKxxwCcCehEWvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn0SrlPrj9sBtOYzOlfvM_tKxxwCcCehEWvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn0SrlPrj9sBtOYzOlfvM_tKxxwCcCehEWvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn0SrlPrj9sBtOYzOlfvM_tKxxwCcCehEWvA&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTn0SrlPrj9sBtOYzOlfvM_tKxxwCcCehEWvA&usqp=CAU"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "List View ",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
        ),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: imageList.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            height: 250,
            margin: const EdgeInsets.all(10),
            child: Image.network(imageList[index],),
          );
        },
        separatorBuilder: (context, index) {
          return const Center(child: Text("Indian Cricket Players"));
        },
      )
    );
  }
}
