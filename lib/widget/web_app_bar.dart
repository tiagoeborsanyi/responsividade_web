import 'package:flutter/material.dart';

class WebAppBar extends StatelessWidget {
  const WebAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        children: [
          Image.asset(
            "imagens/logo.png",
            fit: BoxFit.contain,
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_rounded),
          ),
          SizedBox(width: 10),
          TextButton(
            onPressed: () {},
            child: Text('Cadastrar'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.lightBlueAccent,
              primary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15),
            ),
          ),
          SizedBox(width: 10),
          TextButton(
            onPressed: () {},
            child: Text('Entrar'),
            style: TextButton.styleFrom(
              backgroundColor: Colors.orange,
              primary: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15),
            ),
          ),
        ],
      ),
    );
  }
}
