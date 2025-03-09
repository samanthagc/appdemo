import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  TextStyle textStyle() {
    return TextStyle(
      fontSize: 25,
      color: Colors.purple
    );
  }

  final TextEditingController _price = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Primeiro App')),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 10, top: 10),
        child: TextField(
          controller: _price,
          keyboardType: TextInputType.number,
          decoration: InputDecoration(labelText: "Preço"),
          style: textStyle(),
        ),
      ),
    );
  }
}
