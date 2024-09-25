import 'package:app_test/widgets/appWidget.dart';
import 'package:flutter/material.dart';

class AppListPAge extends StatefulWidget {
  const AppListPAge({super.key});

  @override
  State<AppListPAge> createState() => _AppListPAgeState();
}

class _AppListPAgeState extends State<AppListPAge> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(40, 255, 255, 255),
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: const TextField(
            cursorColor: Colors.white,
            decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(Icons.search),
                prefixIconColor: Colors.white),
          ),
        ),
        SizedBox(
          height: size.height * 0.04,
        ),
        Container(
          width: size.width * 1,
          height: size.height * 0.001,
          decoration: const BoxDecoration(color: Colors.white),
        ),
        const Appwidget(
          type: "On",
        ),
        const Appwidget(type: "Off")
      ],
    );
  }
}
