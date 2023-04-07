import 'package:flutter/material.dart';

class YellowButton extends StatelessWidget {
  final String buttonText;
  Function callBackFunction;

  YellowButton(this.buttonText, {super.key, required this.callBackFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callBackFunction(buttonText),
      child: CircleAvatar(
        backgroundColor: Colors.orange,
        radius: 35,
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
      ),
    );
  }
}
