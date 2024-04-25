import 'package:flutter/material.dart';
import 'package:sislogin/home_page.dart';
import 'package:sislogin/login_page.dart';

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
        primarySwatch: Colors.blueGrey,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(title: 'Exemplo Navegação'),
        '/home': (context) => const HomePage(title: 'Página Principal'),
      },
    );
  }
}
