import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Player extends StatefulWidget {
  const Player({super.key});

  @override
  State<Player> createState() => _PlayerState();
}

class _PlayerState extends State<Player> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              SizedBox(
                height: 550,
                width: double.infinity,
                child: Image.asset("Assets/272cf15a08dcca3bd22e258e7635e9c2 1.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Text(
                    "Alone in the Abyss",
                      style: GoogleFonts.inter(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        color: const Color.fromRGBO(230, 154, 21, 1),
                      ),
                  ),
                  Text(
                    "Youlakou",
                      style: GoogleFonts.inter(
                        fontSize: 13,
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                  ),
                  const SizedBox(height: 10,)
                ],
              )
            ],
          ),
          const SizedBox(height: 25,),
          Row(
            children: [
              const SizedBox(
                width: 20,
              ),
              Text(
                "Dynamic Warmup | ",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              Text(
                "See all",
                style: GoogleFonts.inter(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
            ],
          ),
          const SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.only(
              left: 15,
              right: 15
            ),
            child: LinearPercentIndicator(
              percent: 0.34,
              width: 370,
              barRadius: const Radius.circular(10),
              backgroundColor: const Color.fromRGBO(217, 217, 217, 0.19),
              progressColor: const Color.fromRGBO(230, 154, 21, 1),
            ),
          ),
           const SizedBox(height: 35,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.replay,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 25,
              ),
              Icon(
                Icons.fast_rewind,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 25,
              ),
              Icon(
                Icons.play_circle_fill,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 50,
              ),
              Icon(
                Icons.fast_forward,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 25,
              ),
              Icon(
                Icons.volume_down,
                color: Color.fromRGBO(255, 255, 255, 1),
                size: 25,
              ),
                
            ],
          )
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: const Color.fromRGBO(157, 178, 206, 1),
        selectedItemColor: const Color.fromRGBO(230, 154, 21, 1),
        backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
            ),
            label: "Favorite",
            backgroundColor: Color.fromRGBO(19, 19, 19, 1),
          ),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.trolley,
              ),
              label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
              ),
              label: "Search")
        ],
      ),
    );
  }
}