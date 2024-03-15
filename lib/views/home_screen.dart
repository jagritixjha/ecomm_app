import 'package:ecomm_app/controller/global_variable.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade300,
      body: Stack(
        children: [
          SizedBox(
            height: 380,
            width: double.infinity,
            child: Stack(
              children: [
                Image.asset(
                  'assets/pic.png',
                  height: 380,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
                const Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Welcome to \nNew Aplanet',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w900,
                      fontSize: 50,
                      height: 1,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, left: 20, right: 16),
                  child: Row(
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
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 550,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.brown.shade300,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                boxShadow: const [
                  BoxShadow(
                    offset: Offset(0, -2),
                    color: Colors.black87,
                    spreadRadius: 10,
                    blurRadius: 20,
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Related for you',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Container(
                      height: 342,
                      margin: const EdgeInsets.only(bottom: 10),
                      child: Expanded(
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            final dataa = data[index];
                            return Container(
                              margin: const EdgeInsets.only(right: 20, top: 20),
                              height: 320,
                              width: 180,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 230,
                                    width: 180,
                                    decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(6),
                                      ),
                                      image: DecorationImage(
                                        image: AssetImage(
                                          dataa['image'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    dataa['title'],
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w700,
                                      fontSize: 20,
                                    ),
                                  ),
                                  Text(
                                    'I spotted Tsira on a trip to the Kruger National Park, South Africa. .',
                                    style: TextStyle(
                                        color: Colors.brown.shade50,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 14,
                                        height: 0),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    const Text(
                      'Quick Category',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Expanded(
                        child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: category.length,
                      itemBuilder: (context, index) {
                        final icon = category[index];
                        return Row(
                          children: [
                            Column(
                              children: [
                                Container(
                                  height: 80,
                                  width: 80,
                                  margin: const EdgeInsets.only(
                                      top: 10, bottom: 2, right: 10),
                                  padding: const EdgeInsets.all(14),
                                  decoration: BoxDecoration(
                                    color: Colors.brown.shade200,
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(6),
                                    ),
                                  ),
                                  child: Image.asset(
                                    icon['image'],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Text(
                                  icon['title'],
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16,
                                      letterSpacing: 1),
                                ),
                              ],
                            ),
                          ],
                        );
                      },
                    ))
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
