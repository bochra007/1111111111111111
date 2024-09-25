import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  final String text;

  const MainTitle({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textAlign: TextAlign.center,
          text,
          style: const TextStyle(
            color: Color.fromRGBO(255, 255, 255, 0.86),
            fontSize: 30.0,
          ),
        ),
      ],
    );
  }
}
