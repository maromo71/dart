import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  void _showAlert(BuildContext context) {
    debugPrint('Clicou no botão');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Container(
        alignment: AlignmentDirectional.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: Colors.yellowAccent,
              width: 200,
              height: 28,
              child: const Text(
                'Vamos Contar',
                style: TextStyle(color: Colors.black, fontSize: 22),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () => _showAlert(context),
              child: const Text('Clique Aqui'),
            ),
          ],
        ),
      ),
    );
  }
}
