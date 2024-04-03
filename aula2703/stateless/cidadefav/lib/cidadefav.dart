import 'package:flutter/material.dart';

class FavoriteCity extends StatefulWidget {
  const FavoriteCity({super.key});

  @override
  State<FavoriteCity> createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  String nameCity = ' ';
  @override
  Widget build(BuildContext context) {
    debugPrint('FavoriteCity foi criado');

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Exemplo com Estado',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              onSubmitted: (String userInput) {
                setState(() {
                  debugPrint(
                    "O Método onSubmitted foi chamado com o valor $userInput",
                  );
                  nameCity = userInput;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Sua cidade favorita é: $nameCity",
                  style: const TextStyle(fontSize: 20.0),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
