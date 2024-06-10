import 'package:flutter/material.dart';

class IndianFlag extends StatefulWidget {
  const IndianFlag({super.key});

  @override
  State<IndianFlag> createState() => _IndianFlagState();
}

class _IndianFlagState extends State<IndianFlag> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flag"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.grey.shade200,
        child: Center(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  child: Column(
                    children: [
                      Container(
                        width: 10,
                        height: 750,
                        color:
                            (count >= 1) ? Colors.black : Colors.grey.shade200,
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      width: 300,
                      height: 80,
                      color:
                          (count >= 2) ? Colors.orange : Colors.grey.shade200,
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      color: (count >= 3) ? Colors.white : Colors.grey.shade200,
                      child: Center(
                        child: (count >= 4)
                            ? Image.network(
                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRexHCKR2dQdwEw1KL73i760TU15r3OFGBYuh3G3t_RkhXQnSXB3UXnT5Vw0j71gUdwdyw&usqp=CAU",
                                width: 80,
                                height: 80,
                                fit: BoxFit.cover,
                              )
                            : Container(),
                      ),
                    ),
                    Container(
                      width: 300,
                      height: 80,
                      color: (count >= 5) ? Colors.green : Colors.grey.shade200,
                    )
                  ],
                ),
              ]),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
