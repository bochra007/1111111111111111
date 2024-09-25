import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const MainButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(63, 99, 169, 1),
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white),
      width: size.width * 0.32,
      height: size.height * 0.07,
      child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                text,
                style: const TextStyle(
                    color: Color.fromRGBO(63, 119, 182, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.normal),
              ),
              const Icon(
                Icons.navigate_next_rounded,
                size: 20,
                color: Color.fromRGBO(63, 119, 182, 1),
              )
            ],
          )),
    );
  }
}
