import 'package:flutter/material.dart';

class RegrasLayout extends StatefulWidget {
  const RegrasLayout({Key? key}) : super(key: key);

  @override
  _RegrasLayoutState createState() => _RegrasLayoutState();
}

class _RegrasLayoutState extends State<RegrasLayout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layout Builder'),
      ),
      body: Container(
        // width: 300,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.orange,
        child: LayoutBuilder(
          builder: (context, constraint) {
            // A constraint pega sempre o valor total do pai logo acima dele
            var largura = constraint.maxWidth;
            print("Largura: $largura");

            if (largura < 600) {
              //Celular
              return Text('celulares');
            } else if (largura < 960) {
              return Text('celulares e tablets');
            } else {
              return Text('telas grandes');
            }
            // return Container(
            //   child: Text('tiago'),
            // );
          },
        ),
      ),
    );
  }
}
