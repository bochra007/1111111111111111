import 'package:flutter/material.dart';

class IconAddChild extends StatefulWidget {
  const IconAddChild({super.key});

  @override
  State<IconAddChild> createState() => _IconAddChildState();
}

class _IconAddChildState extends State<IconAddChild> {
  @override
  Widget build(BuildContext context) {
    //  final size = MediaQuery.of(context).size;

    return Stack(children: [
      Transform.translate(
          offset: const Offset(45, 0),
          child: Image.asset(
            "assets/images/Avatar-1.png",
          )),
      Transform.translate(
          offset: const Offset(-25, 0),
          child: Image.asset("assets/images/Avatar.png")),
      Transform.translate(
          offset: const Offset(15, 55),
          child: Image.asset(
            "assets/images/testImg/Avatar-2.png",
            scale: 1.9,
          ))
    ]);
  }
}
