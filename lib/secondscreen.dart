import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  final String parameter;

  const SecondScreen(this.parameter, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: Text(
          'Parameter: $parameter',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}