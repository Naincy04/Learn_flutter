import 'package:flutter/material.dart';
import 'package:learn_flutter/widgets.dart/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text("Catalog app"),
      ),
      body: const Text("Hello Welcome to My world"),
      drawer: const MyDrawer(),
    );
  }
}
