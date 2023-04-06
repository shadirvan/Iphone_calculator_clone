import 'package:flutter/material.dart';
import 'package:collection/collection.dart';

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
  var displayValue = "0";
  List<double> nums = [];
  List<String> operations = ["+", "-", "÷", "x", "=", "AC"];
  callback(varInput) {
    String newValue = "";
    if (displayValue == "0" && !operations.contains(varInput)) {
      setState(() {
        displayValue = varInput;
      });
    } else if (displayValue != "0" && !operations.contains(varInput)) {
      setState(() {
        newValue = displayValue + varInput;
        displayValue = newValue;
      });
    } else if (operations.contains(varInput)) {
      if (varInput == "+") {
        nums.add(double.parse(displayValue));
        displayValue = "0";
        print(nums);
      } else if (varInput == "AC") {
        nums.clear;
        print(nums);
        setState(() {
          displayValue = "0";
        });
      } else if (varInput == "=" && nums.isNotEmpty) {
        nums.add(double.parse(displayValue));
        setState(() {
          displayValue = nums.sum.toString();
        });
        nums.clear();
        print(nums);
      }
    }
  }

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
            children: [
              GreyButton("AC", callBackFunction: callback),
              GreyButton("+/-", callBackFunction: callback),
              GreyButton("%", callBackFunction: callback),
              YellowButton("÷", callBackFunction: callback)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              White24Button(
                buttonText: "7",
                callBackFunction: callback,
              ),
              White24Button(buttonText: "8", callBackFunction: callback),
              White24Button(buttonText: "9", callBackFunction: callback),
              YellowButton("x", callBackFunction: callback)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              White24Button(buttonText: "4", callBackFunction: callback),
              White24Button(buttonText: "5", callBackFunction: callback),
              White24Button(buttonText: "6", callBackFunction: callback),
              YellowButton("-", callBackFunction: callback)
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              White24Button(buttonText: "1", callBackFunction: callback),
              White24Button(buttonText: "2", callBackFunction: callback),
              White24Button(buttonText: "3", callBackFunction: callback),
              YellowButton("+", callBackFunction: callback),
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
              White24Button(buttonText: ".", callBackFunction: callback),
              YellowButton("=", callBackFunction: callback),
            ],
          ),
        ],
      ),
    );
  }
}
