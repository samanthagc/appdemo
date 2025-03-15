import 'package:flutter/material.dart';
import 'secondscreen.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    initialRoute: "/",
    routes: {
      "/": (context) => MyApp(),
      "second": (context) => SecondScreen("Samantha :)")
    }
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First screen'),
      ),
      body: ElevatedButton(onPressed: (){
        Navigator.pushNamed(context, "second");
      }, child: Text('Go to second screen')),
    );
  }
}