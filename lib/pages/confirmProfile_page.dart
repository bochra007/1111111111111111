import 'package:app_test/utilities/routes.dart';
import 'package:app_test/widgets/iconConfirm.dart';
import 'package:flutter/material.dart';

class ConfirmProfilePage extends StatefulWidget {
  const ConfirmProfilePage({super.key});

  @override
  State<ConfirmProfilePage> createState() => _ConfirmProfilePageState();
}

class _ConfirmProfilePageState extends State<ConfirmProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SizedBox(
      width: size.width * 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 32.0),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: size.width * 0.65,
                child: const Text(
                  style: TextStyle(color: Colors.white, fontSize: 25),
                  textAlign: TextAlign.center,
                  "Your child’s profile information has been successfully added ",
                ),
              ),
              SizedBox(
                height: size.height * 0.03,
              ),
              Image.asset("assets/images/Vector.png"),
              SizedBox(
                height: size.height * 0.03,
              ),
              const IconConfirm(),
              SizedBox(
                height: size.height * 0.03,
              ),
              Row(
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
                                .pushNamed(AppRoutes.addProfilePageRout);
                          },
                          child: const Text(
                            "Add new profile",
                            style: TextStyle(
                                color: Color.fromRGBO(63, 119, 182, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(63, 99, 169, 1),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    width: size.width * 0.35,
                    height: size.height * 0.07,
                    child: Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.addChildPageRout);
                          },
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                "Continue",
                                style: TextStyle(
                                    color: Color.fromRGBO(63, 119, 182, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w400),
                              ),
                              Icon(
                                Icons.navigate_next_rounded,
                                size: 20,
                                color: Color.fromRGBO(63, 119, 182, 1),
                              )
                            ],
                          )),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromRGBO(63, 99, 169, 1),
                        ),
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white),
                    width: size.width * 0.65,
                    height: size.height * 0.07,
                    child: Center(
                      child: InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.addProfilePageRout);
                          },
                          child: const Text(
                            "Modify profile information",
                            style: TextStyle(
                                color: Color.fromRGBO(63, 119, 182, 1),
                                fontSize: 18,
                                fontWeight: FontWeight.w400),
                          )),
                    ),
                  ),
                ],
              )
            ]),
      ),
    ));
  }
}
