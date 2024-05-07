import 'package:flutter/material.dart';

import 'tarefas.dart';

class DetalhesPage extends StatelessWidget {
  // In the constructor, require a Todo.
  const DetalhesPage({super.key, required this.tarefa});

  // Declare a field that holds the Todo.
  final Tarefa tarefa;

  @override
  Widget build(BuildContext context) {
    // Use the Todo to create the UI.
    return Scaffold(
      appBar: AppBar(
        title: Text(tarefa.titulo),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(tarefa.descricao),
      ),
    );
  }
}
