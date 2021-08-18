import 'package:flutter/material.dart';
import 'package:responsividade_web/loja_virtual.dart';
import 'package:responsividade_web/widget/tamanho_textos.dart';
// import 'package:responsividade_web/regras_layout.dart';
// import 'package:responsividade_web/orientacao.dart';
// import 'package:responsividade_web/responsividade_media_query.dart';
// import 'package:responsividade_web/responsividade_row_col.dart';
// import 'package:responsividade_web/responsividade_wrap.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Web',
      debugShowCheckedModeBanner: false,
      home: TamanhoTextos(),
    );
  }
}
