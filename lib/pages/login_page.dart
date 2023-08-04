import 'package:flutter/material.dart';

class LogInPage extends StatelessWidget {
  const LogInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color.fromARGB(255, 255, 255, 255),
      child: Column(
        children: [
          Image.asset(
            "assets/images/undraw_secure_login_pdn4.png",
            fit: BoxFit.cover,
          ),
          const Text(
            "Welcome",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
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
                  decoration: const InputDecoration(labelText: "UserName"),
                ),
                TextFormField(
                  decoration: const InputDecoration(labelText: "Password"),
                ),
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("LogIn"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

void logIn() {}
