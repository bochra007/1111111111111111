import 'package:flutter/material.dart';

class Appwidget extends StatelessWidget {
  final String type;
  const Appwidget({super.key, required this.type});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset("assets/icons/google-logo-1.png"),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Google Chrome",
                    style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 0.70),
                        fontSize: 18),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    type,
                    style: const TextStyle(
                        color: Color.fromARGB(181, 158, 158, 158)),
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  if (type == "On")
                    Container(
                      width: size.width * 0.15,
                      height: size.height * 0.05,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromRGBO(83, 242, 147, 1),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: size.width * 0.07,
                            height: size.height * 0.035,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: const Icon(Icons.check),
                          ),
                          SizedBox(
                            width: size.width * 0.01,
                          )
                        ],
                      ),
                    ),
                  if (type == "Off")
                    Container(
                      width: size.width * 0.15,
                      height: size.height * 0.05,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        color: Color.fromRGBO(158, 158, 158, 0.20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: size.width * 0.01,
                          ),
                          Container(
                            width: size.width * 0.07,
                            height: size.height * 0.035,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5))),
                            child: const Icon(Icons.highlight_off_sharp),
                          ),
                        ],
                      ),
                    ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.02,
          ),
          Container(
            width: size.width * 0.8,
            height: size.height * 0.001,
            decoration:
                const BoxDecoration(color: Color.fromRGBO(255, 255, 255, 0.1)),
          ),
        ],
      ),
    );
  }
}
