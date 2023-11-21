import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/homepage_constant.dart';

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

  static Color colorTop = HomepageConstant.eveningTop;
  static Color colorBottom = HomepageConstant.eveningBottom;
  var activeBackground = HomepageConstant.evening;

  void toggleBackground() {
    setState(() {
      colorTop = activeBackground == HomepageConstant.evening
          ? HomepageConstant.eveningTop
          : HomepageConstant.afternoonTop;
      colorBottom = activeBackground == HomepageConstant.evening
          ? HomepageConstant.eveningBottom
          : HomepageConstant.afternoonBottom;
      activeBackground = activeBackground == HomepageConstant.evening
          ? HomepageConstant.afternoon
          : HomepageConstant.evening;
    });
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
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              colorTop,
              colorBottom,
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
                      activeBackground,
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
                  ElevatedButton(
                    onPressed: toggleBackground,
                    style: ElevatedButton.styleFrom(
                        elevation: 1.0,
                        backgroundColor: Color(0xFF3625AF),
                        textStyle: const TextStyle(color: Colors.white)),
                    child: const Text('Change Background'),
                  ),
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
