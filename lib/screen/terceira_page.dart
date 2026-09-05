import 'package:aula02/screen/galeria_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/meuDrawer.dart';
import 'myhomepage.dart';

class TerceiraPage extends StatefulWidget {
  @override
  State<TerceiraPage> createState() => _TerceiraPageState();
}

class _TerceiraPageState extends State<TerceiraPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Segunda tela"),
      ),
      drawer: MenuDrawer(),
      body: Center(child: Column(children: [Text("tela 3 deu certo")])),
    );
  }
}


