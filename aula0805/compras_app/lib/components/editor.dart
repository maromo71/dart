import 'package:flutter/material.dart';

class Editor extends StatelessWidget {
  const Editor(
      {super.key,
      required this.controlador,
      required this.rotulo,
      required this.dica,
      this.decimal,
      this.icone});

  final TextEditingController controlador;
  final String rotulo;
  final String dica;
  final bool? decimal;
  final IconData? icone;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        controller: controlador,
        style: const TextStyle(fontSize: 20.0),
        decoration: InputDecoration(
          icon: icone != null ? Icon(icone) : null,
          labelText: rotulo,
          hintText: dica,
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(5.0)),
          ),
        ),
        keyboardType: TextInputType.numberWithOptions(decimal: decimal),
      ),
    );
  }
}
