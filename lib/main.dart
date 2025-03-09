import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  TextStyle textStyle() {
    return TextStyle(
      fontSize: 40,
      color: Colors.black,
      fontStyle: FontStyle.italic,
      fontWeight: FontWeight.bold,
      decoration: TextDecoration.underline,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Primeiro App')),
      body: Container(
        padding: EdgeInsets.all(10),
        margin: EdgeInsets.only(left: 10, top: 10),
        child: Row(
          children: [
            Expanded(
              child: Image.network(
                'https://picsum.photos/250?image=9',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 10), // Espaço entre as imagens
            Expanded(
              child: Image.asset("images/laptop.jpg", fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
