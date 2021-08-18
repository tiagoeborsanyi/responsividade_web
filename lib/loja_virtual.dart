import 'package:flutter/material.dart';
import 'package:responsividade_web/widget/item_produto.dart';
import 'package:responsividade_web/widget/mobile_app_bar.dart';
import 'package:responsividade_web/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
  _ajustarVisualizacao(double larguraTela) {
    int colunas = 2;
    if (larguraTela <= 600) {
      colunas = 2;
    } else if (larguraTela <= 960) {
      colunas = 4;
    } else {
      colunas = 6;
    }
    return colunas;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraint) {
        var largura = constraint.maxWidth;
        var alturaBarra = AppBar().preferredSize.height;

        return Scaffold(
          appBar: largura < 600
              ? PreferredSize(
                  child: MobileAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                )
              : PreferredSize(
                  child: WebAppBar(),
                  preferredSize: Size(largura, alturaBarra),
                ),
          body: Padding(
            padding: EdgeInsets.all(16),
            child: GridView.count(
              crossAxisCount: _ajustarVisualizacao(largura),
              crossAxisSpacing: 8,
              mainAxisSpacing: 8,
              children: [
                ItemProduto("Kit Multimidia", "2.500,00", "p1.jpg"),
                ItemProduto("Pneu aro 16", "2.500,00", "p2.jpg"),
                ItemProduto("Samsung Edge", "2.500,00", "p3.jpg"),
                ItemProduto("Galaxy 10", "2.500,00", "p4.jpg"),
                ItemProduto("Iphone 10", "2.500,00", "p5.jpg"),
                ItemProduto("Iphone XR", "2.500,00", "p6.jpg"),
                ItemProduto("Kit Multimidia", "2.500,00", "p1.jpg"),
                ItemProduto("Pneu aro 16", "2.500,00", "p2.jpg"),
                ItemProduto("Samsung Edge", "2.500,00", "p3.jpg"),
                ItemProduto("Galaxy 10", "2.500,00", "p4.jpg"),
                ItemProduto("Iphone 10", "2.500,00", "p5.jpg"),
                ItemProduto("Iphone XR", "2.500,00", "p6.jpg"),
                ItemProduto("Kit Multimidia", "2.500,00", "p1.jpg"),
                ItemProduto("Pneu aro 16", "2.500,00", "p2.jpg"),
                ItemProduto("Samsung Edge", "2.500,00", "p3.jpg"),
                ItemProduto("Galaxy 10", "2.500,00", "p4.jpg"),
                ItemProduto("Iphone 10", "2.500,00", "p5.jpg"),
                ItemProduto("Iphone XR", "2.500,00", "p6.jpg"),
              ],
            ),
          ),
        );
      },
    );
  }
}
