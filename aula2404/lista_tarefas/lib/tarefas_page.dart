import 'package:flutter/material.dart';

import 'detalhes_page.dart';
import 'tarefas.dart';

class TarefasPage extends StatelessWidget {
  const TarefasPage({super.key, required this.tarefas});

  final List<Tarefa> tarefas;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tarefas'),
      ),
      body: ListView.builder(
        itemCount: tarefas.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(tarefas[index].titulo),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetalhesPage(tarefa: tarefas[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
