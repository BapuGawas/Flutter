import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 630,
            child: Image.asset(
              "Assets/01.jpg",
              fit: BoxFit.cover,
              )
          ),
          const SizedBox(height: 20,),
          Text(
            "Lets find your Paradise",
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 22,
            ),
          ),
          const SizedBox(height: 10,),
          SizedBox(
            width: 280,
            child: Text(
              "Find your perfect dream space with just a few clicks",
              style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: const Color.fromRGBO(101, 101, 101, 1)
              ),
            ),
          ),
          const SizedBox(height: 25,),
          GestureDetector(
            onTap: () {
              
              
            },
            child: Container(
              width: 220,
              height: 55,
              decoration: BoxDecoration(
                color: const Color.fromRGBO(32, 169, 247, 1),
                borderRadius: BorderRadius.circular(40)
              ),
              child: Center(
                child: Text(
                  "Get Started",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 22,
                    color: const Color.fromRGBO(255, 255, 255, 1)
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}