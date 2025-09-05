import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Material App', home: _HomeScreenState());
  }
}

class _HomeScreenState extends StatefulWidget {
  @override
  State<_HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<_HomeScreenState> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Material App Bar'), centerTitle: true),
      body: Center(child: Text('Hello World $_value')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _value++;
          setState(() {});
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
