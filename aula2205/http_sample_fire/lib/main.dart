import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:http_sample_fire/pages/input_list_form.dart';
import 'services/firebase_options.dart';

/// Função principal do aplicativo.
///
/// Responsável por inicializar o
/// Firebase e executar o aplicativo.
void main() async {
  // Certifica-se de que o binding do Flutter est  inicializado.
  WidgetsFlutterBinding.ensureInitialized();

  // Inicializa o Firebase com as configura es para a plataforma atual.
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Executa o aplicativo.
  runApp(const AppFirebase());
}

class AppFirebase extends StatelessWidget {
  const AppFirebase({super.key});

  // Esse metodo é chamado para iniciar o aplicativo.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Person - App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const InputListForm(title: 'Cadastro de Pessoas'),
    );
  }
}
