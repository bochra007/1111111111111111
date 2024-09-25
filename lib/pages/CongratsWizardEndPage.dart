import 'package:app_test/utilities/routes.dart';
import 'package:app_test/widgets/main_button.dart';
import 'package:flutter/material.dart';

class CongratEndPage extends StatefulWidget {
  const CongratEndPage({super.key});

  @override
  State<CongratEndPage> createState() => _CongratEndPageState();
}

class _CongratEndPageState extends State<CongratEndPage> {
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
                width: size.width * 0.8,
                child: const Text(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                    "Congradulation!"),
              ),
              SizedBox(
                width: size.width * 0.6,
                child: const Text(
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.normal,
                        letterSpacing: 1.2),
                    textAlign: TextAlign.center,
                    "You have successfully completed you child profile."),
              ),
              SizedBox(
                height: size.height * 0.0,
              ),
              Image.asset("assets/images/Vector.png"),
              SizedBox(
                height: size.height * 0.05,
              ),
              Stack(children: [
                Image.asset("assets/images/Vector2.png"),
                Transform.translate(
                    offset: const Offset(25, 0),
                    child: Image.asset("assets/images/Chatting2.png"))
              ]),
              SizedBox(
                height: size.height * 0.05,
              ),
              SizedBox(
                width: size.width * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color.fromRGBO(63, 99, 169, 1),
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.white),
                      width: size.width * 0.45,
                      height: size.height * 0.07,
                      child: Center(
                        child: InkWell(
                            onTap: () {
                                Navigator.of(context)
                                .pushNamed(AppRoutes.addChildPageRout);
                            },
                            child: const Text(
                              "Add another child",
                              style: TextStyle(
                                  color: Color.fromRGBO(63, 119, 182, 1),
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal),
                            )),
                      ),
                    ),
                    MainButton(
                        text: "Continue",
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.congratEndPage2Rout);
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
