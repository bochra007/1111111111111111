import 'package:app_test/utilities/routes.dart';
import 'package:app_test/widgets/sign_in_button.dart';
import 'package:flutter/material.dart';

class Sign_in1 extends StatefulWidget {
  const Sign_in1({super.key});

  @override
  State<Sign_in1> createState() => _Sign_in1State();
}

class _Sign_in1State extends State<Sign_in1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 32.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                      image: AssetImage(
                          'assets/images/MicrosoftTeams-image(23)1.png')),
                ],
              ),
              SizedBox(
                height: size.height * 0.06,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome to 4In Shield!",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.86),
                      fontSize: 22.0,
                    ),
                  ),
                  Text(
                    "Sign in to continue",
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.86),
                      fontSize: 22.0,
                    ),
                  ),
                ],
              ),
              SizedBox(height: size.height * 0.08),
              SignInButton(
                text: "Sign in with Email",
                onTap: () {},
                image:
                    "assets/icons/icon-mail-png-transparent-background-mail-logo-11562851894ksatrtd2da1.png",
              ),
              const SizedBox(
                height: 16.0,
              ),
              SignInButton(
                text: "Sign in with Gmail",
                onTap: () {},
                image: "assets/icons/google-logo1.png",
              ),
              const SizedBox(
                height: 16.0,
              ),
              SignInButton(
                text: "Sign in with Facebook",
                onTap: () {},
                image: "assets/icons/téléchargement1.png",
              ),
              SizedBox(
                height: size.height * 0.08,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: InkWell(
                        child: const Text(
                          "No account? Sign up",
                          style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 0.46),
                            fontSize: 18,
                          ),
                        ),
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(AppRoutes.loginPageRoute);
                        }),
                  ),
                  Container(
                    width: size.width * 0.41,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: const Color.fromARGB(73, 255, 255, 255))),
                  )
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
