import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class TamanhoTextos extends StatefulWidget {
  const TamanhoTextos({Key? key}) : super(key: key);

  @override
  _TamanhoTextosState createState() => _TamanhoTextosState();
}

class _TamanhoTextosState extends State<TamanhoTextos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tamanho de textos'),
      ),
      body: Column(
        children: [
          AutoSizeText(
            "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem",
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 50),
          AutoSizeText(
            "is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem",
            style: TextStyle(fontSize: 30),
            // maxLines: 2,
            // minFontSize: 14,
            // overflow: TextOverflow.ellipsis,

            // minFontSize: 10,
            // maxLines: 2,
            // stepGranularity: 10,

            maxLines: 3,
            presetFontSizes: [30, 22, 14],
          ),
        ],
      ),
    );
  }
}
