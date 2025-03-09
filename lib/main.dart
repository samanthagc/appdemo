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
      decoration: TextDecoration.underline
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Primeiro App')),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 134, 139, 179),
              border: Border.all(color: const Color.fromARGB(255, 48, 47, 94), width: 2),
              borderRadius: BorderRadius.circular(10)
            ),
            child: Text('Texto 1', style: textStyle())
          ),
          ElevatedButton(onPressed: () {}, child: Text('Botão')),
          ],
      ),

    ); 
  }
}
