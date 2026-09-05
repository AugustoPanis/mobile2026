import 'package:aula02/components/meuDrawer.dart';
import 'package:aula02/screen/terceira_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'myhomepage.dart';

class GaleriaPage extends StatefulWidget {
  @override
  State<GaleriaPage> createState() => _GaleriaPageState();
}

class _GaleriaPageState extends State<GaleriaPage> {
  final List<Map<String, String>> _lugares = [
    {
      'nome': 'Guatambu',
      'local': 'Santa catarina, Brasil',
      'imagem': 'assets/images/CasaAugusto.png',
      'descricao': 'Casa do Augusto Panis',
    },
    {
      'nome': 'Brasil Colonia',
      'local': 'Brasil',
      'imagem': 'assets/images/Brasilcolonia.png',
      'descricao': 'Verdadeira bandeira do Brasil',
    },
    {
      'nome': 'Linus Tov',
      'local': 'Linux',
      'imagem': 'assets/images/images.jpg',
      'descricao': 'Criador do linux',
    },
    {
      'nome': 'Internet',
      'local': 'Ta na internet',
      'imagem': 'assets/images/Brasilcolonia.png',
      'descricao': 'Essa é a internet',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text("Galeria")),
      drawer: MenuDrawer(),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: _lugares.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
          ),
          itemBuilder: (context, index) {
            final lugar = _lugares[index];
            return _buildCardDestino(lugar);
          },
        ),
      ),
    );
  }

  Widget _buildCardDestino(Map<String, String> lugar) {
    final String nome = lugar['nome'] ?? '';
    final String local = lugar['local'] ?? '';
    final String imagem = lugar['imagem'] ?? '';

    //Inkell deixa o component filho cliclavel desenhando um efeito
    return InkWell(
      onTap: () => {},
      child: Card(
        elevation: 3,
        //aqui usamos estack proque queremos colocar o nome do lugar na frente da imagem e não embaixo dela
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(imagem, fit: BoxFit.cover),
            ),
            //Posiçã onde dentro do Stacj este ekeneti vai ficar
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 0.55),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                child: Column(
                  children: [
                    Text(nome, style: TextStyle(color: Colors.white)),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.limeAccent,
                          size: 14,
                        ),
                        SizedBox(width: 2),
                        Expanded(
                          child: Text(
                            local,
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
