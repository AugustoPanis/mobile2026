import 'dart:js_interop';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _counter = 0;
  double _counter2 = 0;
  double _resultado = 0;
  String _operacao = "Operação";

  void _incrementCounter() {
    setState(() {_counter++;});
  }
  void _decrementCounter() {
    setState(() {_counter--;});
  }
  void _incrementCounter2() {
    setState(() {_counter2++;});
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
  Widget build(BuildContext context) {return Scaffold(
      appBar: AppBar(backgroundColor: Colors.amber,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(mainAxisAlignment: .center,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(width: 50.0,),
                    Text(('Contador'),
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: 50.0,),
                Text('Contador2',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ]),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text('$_counter',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(width: 50.0,
                ),
                Text('$_operacao',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                SizedBox(width: 50.0,
                ),
                Text('$_counter2',
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.blue),
                    onPressed: (){_incrementCounter();} ,
                    child: Text('Aumentar')
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20), backgroundColor: Colors.red),
                    onPressed: (){_decrementCounter();} ,
                    child: Text('Diminuir')
                )
              ],
            ),

            SizedBox(height: 20,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [ElevatedButton(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20), backgroundColor: Colors.blue),
                  onPressed: (){_incrementCounter2();} ,
                  child: Text('Aumentar')
              ),
                ElevatedButton(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20), backgroundColor: Colors.red),
                    onPressed: (){_decrementCounter2();} ,
                    child: Text('Diminuir')
                )
              ],
            ),

            SizedBox(height: 20,),

            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20), backgroundColor: Colors.blue),
                  onPressed: (){_soma();} ,
                  child: Text('+')
              ),
                ElevatedButton(style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red),
                    onPressed: (){_subtracao();} ,
                    child: Text('-')
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(
                    textStyle: TextStyle(fontSize: 20),
                    backgroundColor: Colors.red),
                    onPressed: (){_multiplicacao();} ,
                    child: Text('x')
                ),
                ElevatedButton(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20), backgroundColor: Colors.red),
                    onPressed: (){_divisao();} ,
                    child: Text('/')
                )

              ],
            ),

            const Text('Resultado'),
            Text('$_resultado', style: Theme.of(context).textTheme.headlineMedium,),
            Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(style: ElevatedButton.styleFrom(textStyle: TextStyle(fontSize: 20), backgroundColor: Colors.blue),
                    onPressed: (){_limpaSoma();} ,
                    child: Text('Limpar soma')
                ),

              ],
            ),

          ],
        ),
      ),

    );
  }
}