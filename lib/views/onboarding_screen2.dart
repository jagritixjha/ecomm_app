import 'package:ecomm_app/controller/global_variable.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class OnBoardingScreen2 extends StatefulWidget {
  const OnBoardingScreen2({super.key});

  @override
  State<OnBoardingScreen2> createState() => _OnBoardingScreen2State();
}

class _OnBoardingScreen2State extends State<OnBoardingScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text.rich(
                      TextSpan(
                          style: TextStyle(
                            color: Colors.brown.shade100,
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                            height: 1,
                          ),
                          children: [
                            const TextSpan(text: 'aplanet\n'),
                            TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.brown.shade50,
                                fontWeight: FontWeight.w600,
                              ),
                              text: 'we love the planet',
                            ),
                          ]),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.menu,
                          color: Colors.brown.shade50,
                          size: 26,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  'Choose a plan',
                  style: TextStyle(
                    color: Colors.brown.shade50,
                    fontWeight: FontWeight.w900,
                    fontSize: 30,
                    height: 1,
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                SizedBox(
                  height: 550,
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: subscription.map(
                          (e) {
                            return Stack(
                              alignment: Alignment.center,
                              children: [
                                Container(
                                  height: 150,
                                  width: double.infinity,
                                  margin: const EdgeInsets.only(bottom: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        e['image'],
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Container(
                                  height: 150,
                                  width: double.infinity,
                                  margin: const EdgeInsets.only(bottom: 20),
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 20),
                                  decoration: BoxDecoration(
                                    color:
                                        Colors.brown.shade900.withOpacity(0.3),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(8),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        e['title'],
                                        style: TextStyle(
                                          color: Colors.brown.shade50,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 28,
                                          height: 1,
                                        ),
                                      ),
                                      Text(
                                        e['price'],
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 40,
                                          height: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            );
                          },
                        ).toList(),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  'Last step to enjoy',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w900,
                    fontSize: 24,
                    height: 1,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: Container(
                width: 100,
                height: 100,
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
                // alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.brown.shade200,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(100),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 34,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
