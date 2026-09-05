import 'dart:js_interop';

import 'package:aula02/screen/galeria_page.dart';
import 'package:aula02/screen/terceira_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/meuDrawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter2 = 0;
  double _counter = 0;
  double _resultado = 0;
  String _operacao = "Operação";
  String _num = "";

  void _adicionarNumero( String valor) {
    setState(() {
      _num += valor;
    });
  }
  void _incrementCounter( ) {
    setState(() {
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter2++;
    });
  }

  void _decrementCounter2() {
    setState(() {
      _counter2--;
    });
  }

  void _soma() {
    setState(() {
      _resultado = _counter + _counter2;
      _operacao = "+";
    });
  }

  void _multiplicacao() {
    setState(() {
      _resultado = _counter * _counter2;
      _operacao = "*";
    });
  }

  void _divisao() {
    setState(() {
      _resultado = _counter / _counter2;
      _operacao = "/";
    });
  }

  void _subtracao() {
    setState(() {
      _resultado = _counter - _counter2;
      _operacao = "-";
    });
  }

  void _limpaSoma() {
    setState(() {
      _resultado = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber, title: Text(widget.title)),
      drawer: MenuDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 50.0),
                Text(
                  ('Contador'),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 50.0),
                Text(
                  'Contador2',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ],
            ),
            Container(
              height: 100,
              width: double.infinity,
              padding: const EdgeInsets.all(16.0),
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: Text(
                      '$_num',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    _adicionarNumero('1');
                  },
                  child: Text('1'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _adicionarNumero('2');
                  },
                  child: Text('2'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _adicionarNumero('3');
                  },
                  child: Text('3'),
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    _incrementCounter2();
                  },
                  child: Text('4'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _decrementCounter2();
                  },
                  child: Text('5'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _decrementCounter2();
                  },
                  child: Text('6'),
                ),
              ],
            ),

            SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    _incrementCounter2();
                  },
                  child: Text('7'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _decrementCounter2();
                  },
                  child: Text('8'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _decrementCounter2();
                  },
                  child: Text('9'),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    _soma();
                  },
                  child: Text('+'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _subtracao();
                  },
                  child: Text('-'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _multiplicacao();
                  },
                  child: Text('x'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red,
                  ),
                  onPressed: () {
                    _divisao();
                  },
                  child: Text('/'),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: () {
                    _limpaSoma();
                  },
                  child: Text('Limpar soma'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
