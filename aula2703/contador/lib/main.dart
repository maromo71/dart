import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Container(
        alignment: AlignmentDirectional.topCenter,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              color: const Color.fromARGB(255, 216, 216, 204),
              width: 200,
              height: 28,
              child: const Text(
                'Vamos Contar...',
                style: TextStyle(
                  fontSize: 22,
                  color: Color.fromARGB(255, 109, 50, 46),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            ElevatedButton(
              onPressed: () => {debugPrint("Clicou..")},
              child: const Text('Clique para contar!'),
            )
          ],
        ),
      ),
    );
  }
}
