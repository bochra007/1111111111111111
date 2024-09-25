import 'package:app_test/utilities/routes.dart';
import 'package:app_test/widgets/main_button.dart';
import 'package:app_test/widgets/title_main.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 60.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: MainTitle(text: "Welcome to 4IN Shield"),
            ),
            SizedBox(
              height: size.height * 0.1,
            ),
            SizedBox(
                child: Image.asset(
              "assets/images/Chatting.png",
              scale: 0.2,
            )),
            SizedBox(
              height: size.height * 0.1,
            ),
            MainButton(
                text: "Start",
                onTap: () {
                  Navigator.of(context).pushNamed(AppRoutes.addDevicePageRout);
                })
          ],
        ),
      ),
    );
  }
}
