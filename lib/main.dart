import 'package:flutter/material.dart';

import 'widgets/grey_button.dart';
import 'widgets/yellow_button.dart';
import 'widgets/whte24_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
        textTheme: const TextTheme(
          titleLarge: TextStyle(color: Colors.white),
          bodyMedium: TextStyle(color: Colors.white),
          bodySmall: TextStyle(color: Colors.white),
        ),
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: "Calculator"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String displayValue = "0";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const SizedBox(
            height: 210,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            height: 100,
            width: double.infinity,
            child: Text(
              displayValue,
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 50),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              GreyButton("AC"),
              GreyButton("+/-"),
              GreyButton("%"),
              YellowButton("÷")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              White24Button("7"),
              White24Button("8"),
              White24Button("9"),
              YellowButton("x")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              White24Button("4"),
              White24Button("5"),
              White24Button("6"),
              YellowButton("-")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              White24Button("1"),
              White24Button("2"),
              White24Button("3"),
              YellowButton("+"),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(27)),
                child: const Text(
                  textAlign: TextAlign.start,
                  "0",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              const White24Button("."),
              const YellowButton("+"),
            ],
          ),
        ],
      ),
    );
  }
}
