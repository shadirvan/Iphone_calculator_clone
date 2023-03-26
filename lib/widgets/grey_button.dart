import 'package:flutter/material.dart';

class GreyButton extends StatelessWidget {
  final String buttonText;
  const GreyButton(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.grey,
      radius: 27,
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.black, fontSize: 25),
      ),
    );
  }
}
