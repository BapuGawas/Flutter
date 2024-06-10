import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Question extends StatefulWidget{

  Question({super.key});

  @override 
  State<Question> createState()=> _QuestionState();
}

class _QuestionState extends State<Question> {

  @override 
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(250, 245, 241, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 50,
          left: 25,
          right: 25,
          bottom: 30
        ),
        child: Column(
          children: [
            Text(
              "Math Quiz",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 20,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            const SizedBox(height: 20,),
            LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 50,
              lineHeight: 5,
              progressColor: const Color.fromRGBO(42, 135, 63, 1),
              animation: true,
              animationDuration: 500,
              backgroundColor: const Color.fromRGBO(245, 216, 186, 1),
              barRadius: const Radius.circular(2),
              percent: 0.82,
            ),
            Row(
              children: [
                const SizedBox(width: 10,),
                Text(
                  "12",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    
                  ),
                ),
                Text(
                  "/20",
                  style: GoogleFonts.dmSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15,),
            Text(
              "If David’s age is 27 years old in 2011. What was his age in 2003?",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: 26,
                color: const Color.fromRGBO(131, 76, 52, 1),
              ),
            ),
            //const SizedBox(height: 15,),

            SizedBox(
              height: 4*90,                  // option count * 90
              child: ListView.separated(
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Container(
                    height: 70,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius:BorderRadius.circular(15),
                      color: Color.fromRGBO(26, 181, 134, 1)
                        
                    ),
                    child: Row(
                      children: [
                        const SizedBox(width: 18,),
                        Text(
                          "19 Years",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: 26,
                            color: Colors.white,
                          ),
                        ),
                        const Spacer(),
                        Icon(Icons.arrow_forward_ios_outlined,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 12,)
                      ],
                    ),
                  );
                },
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 10,
                  );
                },
              ),
            ),
            const SizedBox(height: 10,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                    "Explanation",
                    style: GoogleFonts.dmSans(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: const Color.fromRGBO(131, 76, 52, 1),
                    ),
                  ),
            ),
            Column(
                children: [
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing ",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 16,
                        color: const Color.fromRGBO(131, 76, 52, 0.8),
                      ),
                  )
                ],
               
              ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomRight,
              child: Container(
                width: 90,
                height: 35,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(26, 181, 134, 1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                    "NEXT",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w700,
                        fontSize: 15,
                        color:  Colors.white,
                      ),
                  ),
                  const Icon(Icons.arrow_circle_right_rounded,color: Colors.white,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}