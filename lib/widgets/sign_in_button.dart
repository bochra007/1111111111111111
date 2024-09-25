import 'package:flutter/material.dart';

class SignInButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final String image;
  const SignInButton(
      {super.key,
      required this.text,
      required this.onTap,
      required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromRGBO(63, 99, 169, 1),
          ),
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.white),
      width: 310,
      height: 50,
      child: InkWell(
          onTap: onTap,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    text,
                    style: const TextStyle(
                        color: Color.fromRGBO(63, 119, 182, 1), fontSize: 15.0),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Image.asset(image)
                ],
              ),
              const Icon(
                Icons.navigate_next_outlined,
                color: Color.fromRGBO(63, 99, 169, 1),
              )
            ],
          )),
    );
  }
}
