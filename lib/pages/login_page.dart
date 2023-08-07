import 'package:flutter/material.dart';
import 'package:learn_flutter/utils/routes.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  String name = "";
  bool changeButton = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset(
                "assets/images/undraw_secure_login_pdn4.png",
                fit: BoxFit.cover,
              ),
              Text(
                "Welcome $name",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  children: [
                    TextFormField(
                        decoration: const InputDecoration(
                            labelText: "UserName", hintText: "Enter Username"),
                        onChanged: (value) {
                          name = value;
                        },
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Username can't be empty";
                          }

                          return null;
                        }),
                    TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: "Password", hintText: "Enter Password"),
                        validator: (String? value) {
                          if (value != null && value.isEmpty) {
                            return "Password can't be empty";
                          }

                          return null;
                        }),
                    Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: Material(
                        child: InkWell(
                          onTap: () async {
                            if (_formKey.currentState!.validate()) {
                              {
                                setState(() {
                                  changeButton = true;
                                });
                                await Future.delayed(
                                  const Duration(seconds: 1),
                                );

                                await Navigator.pushNamed(
                                    context, MyRoutes.homeRoute);
                                setState(() {
                                  changeButton = false;
                                });
                              }
                            }
                          },
                          child: AnimatedContainer(
                            duration: const Duration(seconds: 1),
                            alignment: Alignment.center,
                            height: 40,
                            width: changeButton ? 40 : 110,
                            decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(changeButton ? 40 : 8),
                              color: Color.fromARGB(255, 131, 80, 250),
                            ),
                            child: changeButton
                                ? const Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : const Text(
                                    "Login",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 255, 255, 255),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                    ),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
