import 'package:app_test/utilities/routes.dart';
import 'package:app_test/widgets/main_button.dart';
import 'package:flutter/material.dart';

class AddDevicePage extends StatefulWidget {
  const AddDevicePage({super.key});

  @override
  State<AddDevicePage> createState() => _AddDevicePageState();
}

class _AddDevicePageState extends State<AddDevicePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 32.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: size.width * 0.8,
                  child: const Text(
                    textAlign: TextAlign.center,
                    "Please add your child’s devices",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.86),
                      fontSize: 30.0,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Text(
              "The information from your child’s device will help us to assess their mental health, duration of sleep, places visited, used applications  etc. It also gives you the ability to block or allow installed applications",
              style: TextStyle(color: Colors.white, fontSize: 15),
              textAlign: TextAlign.justify,
            ),
            SizedBox(
              height: size.height * 0.03,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.justify,
                "Please follow the following steps:",
              ),
            ),
            Align(
              // alignment: Alignment.topLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          "1.",
                        ),
                        SizedBox(
                          width: size.width * 0.7,
                          child: const Text(
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            " Bring your child’s mobile phone",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          "2.",
                        ),
                        SizedBox(
                          width: size.width * 0.7,
                          child: const Text(
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            " Scan this QR code with your child’s device camera",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          "3.",
                        ),
                        SizedBox(
                          width: size.width * 0.7,
                          child: const Text(
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            " You will be redirected to the 4IN shield application download page",
                          ),
                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          "4.",
                        ),
                        SizedBox(
                          width: size.width * 0.7,
                          child: const Text(
                            textAlign: TextAlign.left,
                            style: TextStyle(color: Colors.white, fontSize: 18),
                            " Once the application is installed, click Next ",
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: size.height * 0.01,
            ),
            Image.asset(
              "assets/images/frame1.png",
              scale: 1.1,
            ),
            SizedBox(
              height: size.height * 0.03,
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
                            .pushNamed(AppRoutes.addProfilePageRout);
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
