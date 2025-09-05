import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter layout demo"), centerTitle: true),
      body: Column(
        children: [
          Placeholder(fallbackHeight: MediaQuery.of(context).size.height * 0.3),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Placeholder(fallbackHeight: 100),
          ),
          Placeholder(fallbackHeight: 100),
          Placeholder(fallbackHeight: 200),
        ],
      ),
    );
  }
}
