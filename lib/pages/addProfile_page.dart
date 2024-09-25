import 'package:app_test/utilities/routes.dart';
import 'package:app_test/widgets/icons.dart';
import 'package:app_test/widgets/input_main.dart';
import 'package:app_test/widgets/main_button.dart';
import 'package:flutter/material.dart';

class AddProfilePage extends StatefulWidget {
  const AddProfilePage({super.key});

  @override
  State<AddProfilePage> createState() => _AddProfilePageState();
}

class _AddProfilePageState extends State<AddProfilePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        child: SizedBox(
          width: size.width * 1,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const ImageIconPage(),
                SizedBox(height: size.height * 0.08),
                SizedBox(
                  width: size.width * 0.8,
                  child: const Text(
                    style: TextStyle(color: Colors.white, fontSize: 22),
                    textAlign: TextAlign.center,
                    "Please enter your child’s social media account information ",
                  ),
                ),
                SizedBox(height: size.height * 0.02),
                SizedBox(
                  width: size.width * 1,
                  child: const Text(
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                    "This information will help us to protect your child from online abusive content and cyberharassment",
                  ),
                ),
                SizedBox(height: size.height * 0.04),
                const InputMain(
                  text: "Social network platform (Drop down)",
                ),
                SizedBox(height: size.height * 0.02),
                const InputMain(
                  text: "Social network user name",
                ),
                SizedBox(height: size.height * 0.02),
                const InputMain(text: "Social network page URL"),
                SizedBox(
                  height: size.width * 0.09,
                ),
                SizedBox(
                  width: size.width * 0.7,
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
                        width: size.width * 0.3,
                        height: size.height * 0.07,
                        child: Center(
                          child: InkWell(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed(AppRoutes.congratEndPage2Rout);
                              },
                              child: const Text(
                                "Skip",
                                style: TextStyle(
                                    color: Color.fromRGBO(63, 119, 182, 1),
                                    fontSize: 18,
                                    fontWeight: FontWeight.w500),
                              )),
                        ),
                      ),
                      MainButton(
                          text: "Next",
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(AppRoutes.confirmProfilePageRout);
                          })
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
