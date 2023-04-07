import 'package:flutter/material.dart';

class White24Button extends StatelessWidget {
  final String buttonText;
  Function callBackFunction;

  White24Button(
      {super.key, required this.buttonText, required this.callBackFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callBackFunction(buttonText),
      child: CircleAvatar(
          backgroundColor: Colors.white24,
          radius: 35,
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          )),
    );
  }
}
