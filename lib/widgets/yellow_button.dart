import 'package:flutter/material.dart';

class YellowButton extends StatelessWidget {
  final String buttonText;
  const YellowButton(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.orange,
      radius: 27,
      child: Text(
        buttonText,
        style: const TextStyle(color: Colors.white, fontSize: 25),
      ),
    );
  }
}
