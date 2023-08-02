import 'package:flutter/material.dart';
import 'package:learn_flutter/pages/login_page.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.lightBlue),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
      routes: {
        "/": (context) => const LogInPage(),
        "/home": (context) => const HomePage()
      },
    );
  }
}
