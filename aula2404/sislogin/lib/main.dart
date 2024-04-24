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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(title: 'Navegação Login Page'),
        '/home': (context) => const HomePage(title: 'Navegação Demo Home Page'),
      },
    );
  }
}
