import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ItemProduto extends StatelessWidget {
  String descricao, preco, imagem;

  ItemProduto(this.descricao, this.preco, this.imagem);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.grey),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 8,
            child: Image.asset(
              "imagens/$imagem",
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 1,
            child: Text(descricao),
          ),
          SizedBox(height: 5),
          Expanded(
            flex: 1,
            child: Text(
              "R\$ $preco",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
