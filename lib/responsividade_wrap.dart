import 'package:flutter/material.dart';

class ResponsividadeWrap extends StatefulWidget {
  @override
  _ResponsividadeWrapState createState() => _ResponsividadeWrapState();
}

class _ResponsividadeWrapState extends State<ResponsividadeWrap> {
  @override
  Widget build(BuildContext context) {
    var largura = MediaQuery.of(context).size.width;
    var altura = MediaQuery.of(context).size.height;

    double hAltura = 100;
    double wLargura = 200;

    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
      ),
      body: Container(
        width: largura,
        color: Colors.black54,
        child: Wrap(
          alignment: WrapAlignment.center,
          runSpacing: 10,
          spacing: 10,
          children: [
            Container(
              height: hAltura,
              width: wLargura,
              color: Colors.orange,
            ),
            Container(
              height: hAltura,
              width: wLargura,
              color: Colors.purple,
            ),
            Container(
              height: hAltura,
              width: wLargura,
              color: Colors.pink,
            ),
          ],
        ),
      ),
    );
  }
}
