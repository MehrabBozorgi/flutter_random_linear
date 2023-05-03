import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstScreen(),
    );
  }
}

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _random = Random();
  List<Color> gradientColor = [];

  List<Color> colors0 = [Colors.pink, Colors.white];
  List<Color> colors1 = [Colors.red, Colors.orange];
  List<Color> colors2 = [Colors.blue[700]!, Colors.lightBlueAccent[100]!];
  List<Color> colors3 = [Colors.white, Colors.purple];

  @override
  void initState() {
    int number = _random.nextInt(4);

    if (number == 0) {
      setState(() => gradientColor = colors0);
    }
    if (number == 1) {
      setState(() => gradientColor = colors1);
    }

    if (number == 2) {
      setState(() => gradientColor = colors2);
    }
    if (number == 3) {
      setState(() => gradientColor = colors3);
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: gradientColor,
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Hi there',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'SUP?!',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
