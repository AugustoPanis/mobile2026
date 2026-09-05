import 'package:aula02/screen/formulario_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screen/myhomepage.dart';
import '../screen/galeria_page.dart';
import '../screen/terceira_page.dart';

class MenuDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Home"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyHomePage(title: "Principal"),
                ),
              );
            },
          ),
          ListTile(
            title: Text("Galeria"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => GaleriaPage()),
              );
            },
          ),
          ListTile(
            title: Text("Terceira Tela"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TerceiraPage()),
              );
            },
          ),
          ListTile(
            title: Text("Formulario"),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => FormularioPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}
