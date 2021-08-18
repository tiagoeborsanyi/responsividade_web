import 'package:flutter/material.dart';

class ResponsividadeRowCol extends StatefulWidget {
  const ResponsividadeRowCol({Key? key}) : super(key: key);

  @override
  _ResponsividadeRowColState createState() => _ResponsividadeRowColState();
}

class _ResponsividadeRowColState extends State<ResponsividadeRowCol> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text('Responsividade'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              // height: 200,
              color: Colors.red,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.orange,
            ),
          )
        ],
      ),
    );
  }
}
