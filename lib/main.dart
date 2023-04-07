import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/grey_button.dart';
import 'widgets/yellow_button.dart';
import 'widgets/whte24_button.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
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
  List<String> nonNums = ["+", "-", "÷", "x", "=", "AC", "%", "+/-"];
  List<String> operands = ["+", "-", "÷", "x"];
  String previousOperand = "+";
  String presentOperand = "";
  double outNum = 0;
  callback(varInput) {
    double output(double inNum) {
      if (previousOperand == "+") {
        outNum += inNum;
      } else if (previousOperand == "-") {
        outNum -= inNum;
      } else if (previousOperand == "x") {
        outNum *= inNum;
      } else if (previousOperand == "÷") {
        outNum /= inNum;
      }
      displayValue = "0";
      previousOperand = presentOperand;
      return outNum;
    }

    if (operands.contains(varInput)) {
      presentOperand = varInput;
      print(output(double.parse(displayValue)));
    } else if (!nonNums.contains(varInput)) {
      if (displayValue == "0") {
        setState(() {
          displayValue = varInput;
        });
      } else {
        setState(() {
          displayValue += varInput;
        });
      }
    } else if (varInput == "=") {
      double out = output(double.parse(displayValue));
      if (out * 10 % 10 == 0) {
        setState(() {
          displayValue = out.toInt().toString();
        });
      } else {
        setState(() {
          displayValue = out.toString();
        });
      }
    } else if (varInput == "AC") {
      setState(() {
        displayValue = "0";
        outNum = 0;
        previousOperand = "+";
      });
    } else if (varInput == "%") {
      setState(() {
        displayValue = (double.parse(displayValue) / 100).toString();
      });
    } else if (varInput == "+/-") {
      if (displayValue == "0") {
        displayValue = "-0";
      } else {
        setState(() {
          displayValue = (double.parse(displayValue) * -1).toString();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 2, 1, 1),
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
            child: FittedBox(
              alignment: Alignment.centerRight,
              child: Text(
                displayValue,
                style: TextStyle(fontSize: 75),
                textAlign: TextAlign.right,
              ),
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
              GestureDetector(
                onTap: () => callback("0"),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
                  height: 70,
                  width: 165,
                  decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(35)),
                  child: const Text(
                    textAlign: TextAlign.left,
                    "0",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
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
