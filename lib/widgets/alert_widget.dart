// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AlertWidget extends StatelessWidget {
  final String titre;
  final String descp;
  final String date;
  const AlertWidget({
    super.key,
    required this.titre,
    required this.descp,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.8,
      //height: size.height * 0.08,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: size.width * 0.75,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      titre,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    ),
                    Text(
                      date,
                      style: const TextStyle(
                          color: Color.fromRGBO(158, 158, 158, 0.899),
                          fontSize: 12),
                    )
                  ],
                ),
                SizedBox(
                  //width: size.width * 0.5,
                  child: Text(descp,
                      style: const TextStyle(
                        fontSize: 13,
                        color: Color.fromRGBO(158, 158, 158, 1),
                      )),
                )
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5)),
                color: Color.fromRGBO(93, 74, 255, 1)),
            width: size.width * 0.007,
            height: size.height * 0.08,
          )
        ],
      ),
    );
  }
}
