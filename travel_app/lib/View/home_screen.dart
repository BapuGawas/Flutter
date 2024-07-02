import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> clicked = [true,false,false,false,false];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(242, 238, 238, 1),
        body: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height *0.03,),
            Row(
              children: [
                const SizedBox(
                  width: 20,
                ),
                Container(
                  height: 45,
                  width: 135,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(22),
                      color: Colors.white),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 5,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(37),
                        child: Image.asset("assets/051.jpg"),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      const Text(
                        "Leonardo",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(45),
                      color: Colors.white),
                  child: const Icon(Icons.notifications_active_outlined),
                ),
                const SizedBox(
                  width: 20,
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height *0.015,),
            SvgPicture.asset("assets/5svg.svg"),
            SizedBox(height: MediaQuery.of(context).size.height *0.008,),
            const Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Best Destination",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                  ),
                ),
                Spacer(),
                Text(
                  "View all",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color.fromRGBO(13, 110, 253, 1)),
                ),
                SizedBox(
                  width: 20,
                ),
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height *0.01,),
            SizedBox(
              height: MediaQuery.of(context).size.height* 0.5,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height* 0.5,
                    width: 285,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 265,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(24),
                              color: Colors.white),
                          child: Padding(
                            padding: const EdgeInsets.all(11),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height* 0.35,
                                  width: double.infinity,
                                  child: Image.asset("assets/052.jpg",
                                    fit: BoxFit.fill,
                                  )
                                  ),
                                SizedBox( height: MediaQuery.of(context).size.height * 0.02,),
                                Row(
                                  children: [
                                    const Text(
                                      "Niladri Reservoir",
                                      style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 16,
                                      ),
                                    ),
                                    const Spacer(),
                                    Image.asset("assets/rating.jpg")
                                  ],
                                ),
                                const Spacer(),
                                Image.asset("assets/location.jpg"),
                                SizedBox( height: MediaQuery.of(context).size.height * 0.015,),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),


          ],
        ),
        bottomNavigationBar: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height*0.1,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.elliptical(350,50),
              topRight: Radius.elliptical(350,50),
            )
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.home_outlined,color:(clicked[0])? Colors.blue : Colors.grey,),
              Icon(Icons.calendar_month,color: (clicked[1])? Colors.blue : Colors.grey,),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromRGBO(13, 110, 253, 1)
                ),
                child: const Icon(Icons.search,color: Colors.white,),
              ),
              Icon(Icons.message_outlined,color:(clicked[3])? Colors.blue : Colors.grey,),
              Icon(Icons.account_circle,color: (clicked[4])? Colors.blue : Colors.grey,)
            ],
          ),
        ),
      ),
    );
  }
}
