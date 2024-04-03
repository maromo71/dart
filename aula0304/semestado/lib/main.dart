import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void printMessage() {
    debugPrint("Botão pressionado");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Estudando Flutter',
            style: TextStyle(
              color: Colors.white,
              fontSize: 31,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
            child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
          ),
          onPressed: printMessage,
          child: const Text(
            'Exemplos Stateless',
            style: TextStyle(color: Colors.white),
          ),
        )),
      ),
    );
  }
}
