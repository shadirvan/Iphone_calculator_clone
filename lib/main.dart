import 'package:flutter/material.dart';

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
            child: const Text(
              "0",
              textAlign: TextAlign.end,
              style: TextStyle(fontSize: 50),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 27,
                child: Text(
                  "AC",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 27,
                child: Text(
                  "+/-",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.grey,
                radius: 27,
                child: Text(
                  "%",
                  style: TextStyle(color: Colors.black, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 27,
                child: Text(
                  "÷",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  "7",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  "8",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  "9",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 27,
                child: Text(
                  "x",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  "4",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  "5",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  "6",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 27,
                child: Text(
                  "-",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  "1",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  "2",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  "3",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 27,
                child: Text(
                  "+",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
                height: 50,
                width: 140,
                decoration: BoxDecoration(
                    color: Colors.white24,
                    borderRadius: BorderRadius.circular(27)),
                child: Text(
                  textAlign: TextAlign.start,
                  "0",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.white24,
                radius: 27,
                child: Text(
                  ".",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 27,
                child: Text(
                  "=",
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
