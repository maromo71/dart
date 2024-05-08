import 'package:compras_app/model/compra.dart';
import 'package:flutter/material.dart';
import '../components/editor.dart';

class FormularioCompra extends StatelessWidget {
  FormularioCompra({super.key});

  final TextEditingController nomeProdutoController = TextEditingController();
  final TextEditingController valorProdutoController = TextEditingController();

  void _cadastrar(BuildContext context) {
    if (nomeProdutoController.text == '' || valorProdutoController.text == '') {
      return;
    }
    final String nomeProduto = nomeProdutoController.text;
    final double valorProduto = double.parse(valorProdutoController.text);
    final compraGerada =
        Compra(nomeProduto: nomeProduto, valorProduto: valorProduto);
    debugPrint('Compra gerada: $compraGerada');
    Navigator.pop(context, compraGerada);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Compra de Produto'),
      ),
      body: Column(
        children: [
          Editor(
            controlador: nomeProdutoController,
            rotulo: 'Nome do Produto',
            dica: 'nome do produto',
          ),
          Editor(
            controlador: valorProdutoController,
            rotulo: 'Valor do Produto',
            dica: '0.00',
            decimal: true,
            icone: Icons.monetization_on,
          ),
          ElevatedButton(
            child: const Text('Cadastrar'),
            onPressed: () {
              _cadastrar(context);
            },
          )
        ],
      ),
    );
  }
}
