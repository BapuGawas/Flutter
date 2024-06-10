import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> categorieName =[
    "Math","History", "Geography", "Biology", "Sports","Geography", "Biology", "Sports",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            const EdgeInsets.only(top: 80, left: 25, right: 25, bottom: 0),
        child: Column(
          children: [
            // Name and Profile Pic.
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hi Pamela,",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w700,
                          fontSize: 25,
                          color: const Color.fromRGBO(131, 76, 52, 1)),
                    ),
                    Text(
                      "Great to see you again!",
                      style: GoogleFonts.dmSans(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: const Color.fromRGBO(131, 76, 52, 1)),
                    ),
                  ],
                ),
                const Spacer(),
                //Profile image of user
                Container(
                  width: 65,
                  height: 65,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRQ_vCbjnN80sd95r6zxqgEQdy8ZM5Kg3RU0g&s")),
                )
              ],
            ),

            const SizedBox(
              height: 20,
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height-170,
              width: 360,
              child: ListView.separated(
                itemCount: categorieName.length,
                itemBuilder: (context, index) {
                  return Container(
                        height: 80,                        
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color.fromRGBO(255, 237, 217, 1),
                        ),
                        child: Row(
                          children: [
                            const SizedBox(width: 15,),
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadiusDirectional.circular(8),
                                color: Colors.white
                              ),
                            ),
                            const SizedBox(width: 12,),

                            Text(
                              categorieName[index],
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w700,
                                fontSize: 20,
                                color: const Color.fromRGBO(131, 76, 52, 1)),
                            ),

                            const Spacer(),

                            const Icon(Icons.arrow_forward_ios_sharp,
                            color: Color.fromRGBO(131, 76, 52, 1),),
                            
                            const SizedBox(width:10)
                          ],
                        ),

                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(
                    height: 15,
                  );
                },
                ),
            )
          ],
        ),
      ),
    );
  }
}
