import "package:flutter/material.dart";

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    const int days = 30;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Heading"),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Container(
              child: Text("Welcome to learning flutter in $days dayss"))),
      drawer: const Drawer(),
    );
  }
}
