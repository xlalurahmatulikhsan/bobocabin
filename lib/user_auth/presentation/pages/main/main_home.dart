import 'package:flutter/material.dart';
import 'package:my_application/shared/theme.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 65,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          'assets/logo/logobobobox.png',
                          width: 34.0,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Image.asset(
                          'assets/logo/logotextwhite.png',
                          width: 132.0,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Good Evening, ikhsan',
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Looking for something amazing?',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Container(
              padding: const EdgeInsets.only(bottom: 24.0),
              alignment: Alignment.topCenter,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color: Colors.white,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 30.0, bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Image.asset('assets/images/bobopoints.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('bobopoints'),
                                Text(
                                  '23.000',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () {
                            print("checkin");
                          },
                          child: Container(
                            alignment: Alignment.center,
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            height: 36,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: orangeColor,
                            ),
                            child: const Text(
                              'Daily Check-In',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      color: greyWhite,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0),
                    padding: const EdgeInsets.symmetric(vertical: 14.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 1,
                          blurRadius: 10,
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                print("Bobobox");
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: greenColor,
                                    maxRadius: 30,
                                    child:
                                        Image.asset('assets/icon/bobobox.png'),
                                  ),
                                  const Text("Bobobox",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                print("Bobocabin");
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: greenLightColor,
                                    maxRadius: 30,
                                    child: Image.asset(
                                        'assets/icon/bobocabin.png'),
                                  ),
                                  const Text("Bobocabin",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            )),
                            Expanded(
                                child: GestureDetector(
                              onTap: () {
                                print("Boboliving");
                              },
                              child: Column(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: blueColor,
                                    maxRadius: 30,
                                    child: Image.asset(
                                        'assets/icon/boboliving.png'),
                                  ),
                                  const Text("Boboliving",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 26,
                  ),
                  // information
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 14.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14.0),
                      color: yellowColor.withOpacity(0.5),
                    ),
                    child: const Text(
                      "Your health and safety are our priority. See our response to Covid-19. Learn More",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  // promotion
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/icon/fire.png',
                          width: 50,
                        ),
                        const Text(
                          'Promotions',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w600),
                        )
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 180,
                            padding: const EdgeInsets.only(right: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  20), // Atur border radius sesuai kebutuhan
                              child: Image.asset(
                                'assets/promotion/promotion1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 180,
                            padding: const EdgeInsets.only(right: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  20), // Atur border radius sesuai kebutuhan
                              child: Image.asset(
                                'assets/promotion/promotion2.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Container(
                            height: 180,
                            padding: const EdgeInsets.only(right: 20),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  20), // Atur border radius sesuai kebutuhan
                              child: Image.asset(
                                'assets/promotion/promotion3.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 180,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                  20), // Atur border radius sesuai kebutuhan
                              child: Image.asset(
                                'assets/promotion/promotion4.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
