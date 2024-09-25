import 'package:app_test/widgets/alert_widget.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          "assets/images/Avatar-2.png",
          scale: 0.7,
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        const Text(
          style: TextStyle(color: Colors.white, fontSize: 18),
          "First name last name ",
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        const Text(
          style: TextStyle(
              color: Color.fromARGB(122, 255, 255, 255), fontSize: 10),
          "AGE",
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 70),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                style: TextStyle(
                    color: Color.fromRGBO(181, 181, 195, 1), fontSize: 13),
                "Month",
              ),
              const Text(
                style: TextStyle(
                    color: Color.fromRGBO(181, 181, 195, 1), fontSize: 13),
                "Week",
              ),
              Container(
                //color: Colors.white,
                width: size.width * 0.12,
                height: size.height * 0.04,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5))),
                child: const Text(
                  style: TextStyle(
                      color: Color.fromRGBO(63, 110, 177, 1),
                      fontSize: 13,
                      fontWeight: FontWeight.bold),
                  "Day",
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.4,
              height: size.height * 0.13,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Danger Level",
                    style: TextStyle(
                        color: Color.fromRGBO(38, 38, 38, 1), fontSize: 11),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "High",
                    style: TextStyle(color: Colors.red, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.4,
              height: size.height * 0.13,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.2,
                    child: const Text(
                      "Last night Sleep duration",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(38, 38, 38, 1),
                        fontSize: 11,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "8h",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              width: size.width * 0.4,
              height: size.height * 0.13,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: size.width * 0.2,
                    child: const Text(
                      "Device usage",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(38, 38, 38, 1),
                        fontSize: 11,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "4h",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
            ),
            Container(
              width: size.width * 0.4,
              height: size.height * 0.13,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    //: size.width * 0,
                    child: Text(
                      "Phone call duration",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromRGBO(38, 38, 38, 1),
                        fontSize: 11,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  const Text(
                    "4h",
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: size.height * 0.02,
        ),
        Container(
          width: size.width * 0.85,
          // height: size.height * 0.8,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Last Alerts ",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const AlertWidget(
                    titre: "Toxic comment!",
                    descp:
                        "Mama always said life was like a box of chocolates. You never know what…",
                    date: "12:45 PM"),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const AlertWidget(
                    titre: "Sleep depreviation!",
                    descp:
                        "Mama always said life was like a box of chocolates. You never know what…",
                    date: "12:45 PM"),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const AlertWidget(
                    titre: "Sleep depreviation!",
                    descp:
                        "Mama always said life was like a box of chocolates. You never know what…",
                    date: "12:45 PM")
              ],
            ),
          ),
        )
      ],
    );
  }
}
