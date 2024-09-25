import 'package:app_test/utilities/router.dart';
import 'package:app_test/utilities/routes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "4IN Shield",
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromRGBO(63, 99, 169, 1),
        primaryColor: Colors.white,
      ),
      onGenerateRoute: onGenerate,
      initialRoute: AppRoutes.landingPageRout,
    );
  }
}
