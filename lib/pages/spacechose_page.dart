import 'package:app_test/utilities/routes.dart';
import 'package:flutter/material.dart';

class SpaceChosePage extends StatefulWidget {
  const SpaceChosePage({super.key});

  @override
  State<SpaceChosePage> createState() => _SpaceChosePageState();
}

class _SpaceChosePageState extends State<SpaceChosePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.7,
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Who is going to use this device?",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.86),
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.15,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.welcomePageRout);
              },
              child: Stack(children: [
                Image.asset(
                  "assets/choses/Widget_5.png",
                  width: size.width * 0.75,
                ),
                Transform.translate(
                  offset: const Offset(188.0, -42.0),
                  child: Image.asset("assets/choses/standing6.png"),
                ),
              ]),
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.welcomePageRout);
              },
              child: Transform.translate(
                offset: const Offset(20.0, 0.0),
                child: Image.asset(
                  "assets/choses/Widget8.png",
                  width: size.width * 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
