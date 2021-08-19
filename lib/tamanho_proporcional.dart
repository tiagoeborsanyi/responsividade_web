import 'package:flutter/material.dart';

class TamanhoProporcional extends StatefulWidget {
  @override
  _TamanhoProporcionalState createState() => _TamanhoProporcionalState();
}

class _TamanhoProporcionalState extends State<TamanhoProporcional> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tamanhos proporcional'),
      ),
      body: Container(
        color: Colors.orangeAccent,
        child: FractionallySizedBox(
          //Nao consigo utilizar este FractionalSizeBox dentro de column() ou row() porque colunas e linhas não tem uma altura e larguras definidas
          heightFactor: 0.5,
          widthFactor: 0.5,
          alignment: Alignment.topLeft,
          child: Text('Tamanho Proporcional'),
        ),
      ),
    );
  }
}
