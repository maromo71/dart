import 'package:compras_app/view/formulario_compra.dart';
import 'package:compras_app/model/compra.dart';
import 'package:flutter/material.dart';
import 'item_compra.dart';

class ListaCompras extends StatefulWidget {
  ListaCompras({super.key});

  final List<Compra> _compras = [];

  @override
  State<ListaCompras> createState() => _ListaComprasState();
}

class _ListaComprasState extends State<ListaCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget._compras.length,
        itemBuilder: (context, indice) {
          final Compra compra = widget._compras[indice];
          return ItemCompra(compra: compra);
        },
      ),
      appBar: AppBar(
        title: const Text('Lista de Compras'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Compra?> future =
              Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioCompra();
          }));
          future.then((compraEfetuada) {
            debugPrint('Opa: $compraEfetuada');
            debugPrint('Chegou no future');
            setState(() {
              widget._compras.add(compraEfetuada!);
            });
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
