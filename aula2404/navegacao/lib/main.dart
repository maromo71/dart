import 'package:flutter/material.dart';
import 'package:navegacao/home_page.dart';

import 'login_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

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
        '/home': (context) => const HomePage(title: 'Página Principal')
      },
    );
  }
}
