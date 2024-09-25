import 'package:flutter/material.dart';

class IconConfirm extends StatefulWidget {
  const IconConfirm({super.key});

  @override
  State<IconConfirm> createState() => _IconConfirmState();
}

class _IconConfirmState extends State<IconConfirm> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(children: [
      SizedBox(
        width: size.width * 0.6,
        height: size.height * 0.3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    padding: const EdgeInsets.only(
                        top: 10, left: 10, right: 10, bottom: 2),
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(229, 229, 229, 1),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Image.asset("assets/images/testImg/boy-22.png")),
                Image.asset("assets/images/testImg/Avatar.png")
              ],
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/testImg/Avatar-2.png"),
                Image.asset("assets/images/testImg/Avatar-1.png"),
              ],
            )
          ],
        ),
      ),
      Transform.translate(
          offset: const Offset(120, 80),
          child: Image.asset("assets/images/testImg/Twitter.png")),
      Transform.translate(
          offset: const Offset(70, 35),
          child: Image.asset("assets/images/testImg/instagram.png")),
      Transform.translate(
          offset: const Offset(45, 95),
          child: Image.asset("assets/images/testImg/facebook.png")),
    ]);
  }
}
