import 'package:flutter/material.dart';
import 'package:responsividade_web/widget/mobile_app_bar.dart';
import 'package:responsividade_web/widget/web_app_bar.dart';

class LojaVirtual extends StatefulWidget {
  const LojaVirtual({Key? key}) : super(key: key);

  @override
  _LojaVirtualState createState() => _LojaVirtualState();
}

class _LojaVirtualState extends State<LojaVirtual> {
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
        );
      },
    );
  }
}
