import 'package:app_test/widgets/chartWidget.dart';
import 'package:app_test/widgets/social_widget.dart';
import 'package:flutter/material.dart';

class DashboardPage2 extends StatefulWidget {
  const DashboardPage2({super.key});

  @override
  State<DashboardPage2> createState() => _DashboardPage2State();
}

class _DashboardPage2State extends State<DashboardPage2> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const ChartWidget(text: 'Mental State'),
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
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.02,
                ),
                const SocialWidget(
                  titre: "Toxic comment!",
                  descp:
                      "Mama always said life was like a box of chocolates. You never know what…",
                  date: "12:45 PM",
                  imageURL: "assets/images/profile1.png",
                ),
                SizedBox(
                  height: size.height * 0.01,
                ),
                const SocialWidget(
                  titre: "Toxic comment!",
                  descp:
                      "Mama always said life was like a box of chocolates. You never know what…",
                  date: "12:45 PM",
                  imageURL: "assets/images/profile2.png",
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
