import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Result extends StatefulWidget{
  Result({super.key});

  @override 
  State<Result> createState()=> _ResultState();
}

class _ResultState extends State<Result>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(   
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 10,
          right: 10,
          bottom: 30
        ),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [              
              Text(
                  "Quiz Result",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                    color: const Color.fromRGBO(131, 76, 52, 1),
                  ),
                ),

                Text(
                  "Math ",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: const Color.fromRGBO(131, 76, 52, 1),
                  ),
                ),
                const Spacer(),
                Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 315,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Color.fromRGBO(246, 221, 195, 1),
                      ),
                    ),

                    
                  ],
                ),
                const Spacer(),
            ],
          ),
        ),
      )
    );
  }
}