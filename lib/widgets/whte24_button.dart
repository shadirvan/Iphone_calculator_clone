import 'package:flutter/material.dart';

import '../main.dart';

class White24Button extends StatelessWidget {
  final String buttonText;

  const White24Button(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("$buttonText Pressed"),
      child: CircleAvatar(
          backgroundColor: Colors.white24,
          radius: 27,
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 25),
          )),
    );
  }
}
