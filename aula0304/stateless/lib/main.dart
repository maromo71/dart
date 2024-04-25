import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void printMessage() {
  debugPrint("Clicado sobre o botao");
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Estudando Flutter',
              style: TextStyle(
                color: Colors.white,
              )),
          backgroundColor: Colors.green,
        ),
        body: const Center(
          child: ElevatedButton(
            onPressed: printMessage,
            child: Text('Clique Aqui'),
          ),
        ),
      ),
    );
  }
}
