import 'package:app_test/utilities/enums.dart';
import 'package:app_test/utilities/routes.dart';
import 'package:app_test/widgets/input_main.dart';
import 'package:app_test/widgets/main_button.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
 
  var _authType = AuthFormType.login;

  

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60.0, horizontal: 32.0),
          child: Form(
       
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    const InputMain(text: "Username"),
                    if (_authType == AuthFormType.register)
                      Column(
                        children: [
                          SizedBox(height: size.height * 0.03),
                          const InputMain(text: "Email"),
                        ],
                      ),
                    SizedBox(height: size.height * 0.03),
                    InputMain(
                        text: _authType == AuthFormType.login
                            ? "Password"
                            : "Confirm your password"),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    if (_authType == AuthFormType.register)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(horizontal: 30),
                            child: InkWell(
                                child: const Text(
                                  "I herby accept terms and conditions",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.46),
                                    fontSize: 14,
                                  ),
                                ),
                                onTap: () {}),
                          ),
                          Container(
                            padding: const EdgeInsets.only(left: 92),
                            child: Container(
                              width: size.width * 0.33,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: const Color.fromARGB(
                                          73, 255, 255, 255))),
                            ),
                          ),
                          SizedBox(
                            height: size.height * 0.03,
                          )
                        ],
                      ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MainButton(
                            text: "Sign in",
                            onTap: () {
                              Navigator.of(context)
                                  .pushNamed(AppRoutes.spaceChoseRout);
                            }),
                      ],
                    ),
                    SizedBox(
                      height: size.height * 0.03,
                    ),
                    if (_authType == AuthFormType.login)
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: InkWell(
                                child: const Text(
                                  "Forgot password ?",
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.46),
                                    fontSize: 18,
                                  ),
                                ),
                                onTap: () {
                                  setState(() {
                                    if (_authType == AuthFormType.login) {
                                      _authType = AuthFormType.register;
                                    } else {
                                      _authType = AuthFormType.login;
                                    }
                                  });
                                }),
                          ),
                          Container(
                            width: size.width * 0.34,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(
                                        73, 255, 255, 255))),
                          )
                        ],
                      ),
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
