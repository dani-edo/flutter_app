import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PerfeqtHomePage extends StatefulWidget {
  const PerfeqtHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State<PerfeqtHomePage> {
  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Color.fromARGB(55, 0, 0, 0),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // main container with background color and padding
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 50),
            margin: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
            decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
              Color(0xFF3625AF),
              Color(0xFFD5D5FF),
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
            child: Column(
              children: [
                // hero widget
                Column(
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Home',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Welcome to today\'s personalized program.',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Image.asset(
                      'assets/images/image-evening.png',
                      width: double.infinity,
                    ),
                    Container(
                        margin: const EdgeInsets.only(top: 10),
                        child: RichText(
                            text: const TextSpan(children: [
                          TextSpan(text: 'Perfect combination to achieve your'),
                          TextSpan(
                              text: ' Life Hacks.',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ])))
                  ],
                ),
                SizedBox(height: 15),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                children: [
                  Transform.translate(
                      offset: Offset(0, -50), child: WellBeingBox()),
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.transparent,
    );
  }
}

class WellBeingBox extends StatelessWidget {
  const WellBeingBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(20),
      decoration: const BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(30, 13, 63, 103),
            blurRadius: 30,
            offset: const Offset(0, 16),
          )
        ],
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Well-being days'),
              SizedBox(height: 5),
              Text(
                '270',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Weight'),
              SizedBox(height: 5),
              Text(
                '50 kgs',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
