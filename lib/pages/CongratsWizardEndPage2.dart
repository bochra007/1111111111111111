import 'package:app_test/utilities/routes.dart';
import 'package:flutter/material.dart';

class CongratEndPage2 extends StatefulWidget {
  const CongratEndPage2({super.key});

  @override
  State<CongratEndPage2> createState() => _CongratEndPage2State();
}

class _CongratEndPage2State extends State<CongratEndPage2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 32.0),
        child: SizedBox(
          width: size.width * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.6,
                child: const Text(
                    style: TextStyle(
                        letterSpacing: 1.2,
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    "Thank you for your confidence in us."),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              Image.asset(
                "assets/logo.png",
              ),
              SizedBox(
                height: size.height * 0.12,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color.fromRGBO(63, 99, 169, 1),
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.white),
                width: size.width * 0.5,
                height: size.height * 0.07,
                child: InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.bottomNavBarPageRout);
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          "Go to dashboard",
                          style: TextStyle(
                              color: Color.fromRGBO(63, 119, 182, 1),
                              fontSize: 18,
                              fontWeight: FontWeight.normal),
                        ),
                        Icon(
                          Icons.navigate_next_rounded,
                          size: 20,
                          color: Color.fromRGBO(63, 119, 182, 1),
                        )
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
