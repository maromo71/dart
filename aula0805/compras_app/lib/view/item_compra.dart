import 'package:compras_app/model/compra.dart';
import 'package:flutter/material.dart';

class ItemCompra extends StatelessWidget {
  final Compra compra;

  const ItemCompra({super.key, required this.compra});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(
          Icons.monetization_on_outlined,
        ),
        title: Text(compra.nomeProduto!),
        subtitle: Text(compra.valorProduto.toString()),
      ),
    );
  }
}
