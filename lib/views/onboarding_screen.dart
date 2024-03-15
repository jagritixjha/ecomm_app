import 'package:flutter/material.dart';

import 'onboarding_screen2.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/bg.png',
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            fit: BoxFit.fitHeight,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 16, right: 10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text.rich(
                      TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 30,
                            height: 1,
                          ),
                          children: [
                            TextSpan(text: 'aplanet\n'),
                            TextSpan(
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                              text: 'we love the planet',
                            ),
                          ]),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.menu,
                          color: Colors.white,
                          size: 26,
                        ))
                  ],
                ),
                const SizedBox(
                  height: 460,
                ),
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 40,
                    ),
                    children: [
                      TextSpan(text: 'Ready to\nWatch?\n'),
                      TextSpan(
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                        text:
                            'Aplanet the global leader in real life entertainment,serving & passionate audience of superfans around the world with the contents which inspires, informs and entertains.',
                      ),
                      TextSpan(
                        style: TextStyle(fontSize: 20, height: 4),
                        text: '\nStart Enjoying',
                      ),
                    ],
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
                    builder: (context) => const OnBoardingScreen2(),
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
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black87,
                        blurRadius: 20,
                        offset: Offset(-2, -2))
                  ],
                ),
                child: const Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                  size: 34,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
