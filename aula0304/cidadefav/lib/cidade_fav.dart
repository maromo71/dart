import 'package:flutter/material.dart';

class FavoriteCity extends StatefulWidget {
  const FavoriteCity({super.key});

  @override
  State<FavoriteCity> createState() => _FavoriteCityState();
}

class _FavoriteCityState extends State<FavoriteCity> {
  String cityName = '';

  @override
  Widget build(BuildContext context) {
    debugPrint("Metodo build");
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Aplicativo Cidade Favorita',
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
                  debugPrint("Método onSubmitted com o valor $userInput");
                  cityName = userInput;
                });
              },
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("Sua cidade favorita é $cityName",
                  style: const TextStyle(fontSize: 20),
                  textAlign: TextAlign.center),
            ),
          ],
        ),
      ),
    );
  }
}
