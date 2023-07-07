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
      body: Column(
        children: [
          Center(
            child: Container(
              width: MediaQuery.of(context).size.width - 30,
              margin:
                  EdgeInsets.only(top: MediaQuery.of(context).padding.top + 10),
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 10.0,
                    offset: const Offset(0, 3),
                  )
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text('Well-being days'),
                      Text(
                        '270',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Weight'),
                      Text(
                        '50 kgs',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.teal,
    );
  }
}
