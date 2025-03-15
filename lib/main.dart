import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyWidget();
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {

  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  String result = "";

  Calculo() {
    double _height, _weight;
    _height = double.parse(height.text) / 100;
    _weight = double.parse(weight.text);

    double imc = _weight / (_height * _height);
    setState(() {
      result = imc.toStringAsPrecision(4);
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IMC")),
      body: Column(
        children: [
           TextFormField(
            controller: height, 
            keyboardType: TextInputType.number, 
            decoration: (InputDecoration(labelText: "Height"))
           ),
           TextFormField(
            controller: weight,
            keyboardType: TextInputType.number, 
            decoration: (InputDecoration(labelText: "Weight"))
            ),
            Padding(
              padding: EdgeInsets.only(top: 15, bottom: 15), 
              child: ElevatedButton(onPressed: Calculo, child: Text("Calcular")),
            ),
            Text(result)
        ],
      ),
    );
  }
}