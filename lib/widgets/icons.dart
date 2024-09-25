import 'package:flutter/material.dart';

class ImageIconPage extends StatefulWidget {
  const ImageIconPage({super.key});

  @override
  State<ImageIconPage> createState() => _ImageIconPageState();
}

class _ImageIconPageState extends State<ImageIconPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(children: [
      SizedBox(
        width: size.width * 0.35,
        height: size.height * 0.15,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, left: 5, right: 5, bottom: 2),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(229, 229, 229, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Image.asset("assets/images/img/boy-22.png")),
                Image.asset("assets/images/img/Avatar.png")
              ],
            ),
            Transform.translate(
                offset: const Offset(-10, 0),
                child: Image.asset("assets/images/img/Avatar-1.png"))
          ],
        ),
      ),
      Transform.translate(
          offset: const Offset(40, 4),
          child: Image.asset("assets/images/img/facebook.png")),
      Transform.translate(
          offset: const Offset(33, 35),
          child: Image.asset("assets/images/img/Twitter.png")),
      Transform.translate(
          offset: const Offset(70, 35),
          child: Image.asset("assets/images/img/instagram.png"))
    ]);
  }
}
