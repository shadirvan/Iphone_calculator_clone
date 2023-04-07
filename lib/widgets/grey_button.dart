import 'package:flutter/material.dart';

class GreyButton extends StatelessWidget {
  final String buttonText;
  Function callBackFunction;
  GreyButton(this.buttonText, {super.key, required this.callBackFunction});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => callBackFunction(buttonText),
      child: CircleAvatar(
        backgroundColor: Colors.grey,
        radius: 35,
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}
