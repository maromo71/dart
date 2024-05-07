import 'package:flutter/material.dart';
import 'tarefas.dart';
import 'tarefas_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.dark(
          primary: Colors.white12,
        ),
      ),
      title: 'Passando Dados',
      home: TarefasPage(
        tarefas: List.generate(
          20,
          (i) => Tarefa(
            'Tarefa $i',
            'Uma descrição completa da Tarefa $i',
          ),
        ),
      ),
    ),
  );
}
