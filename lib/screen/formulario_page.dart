import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../components/ElevateButtonComponent.dart';
import '../components/meuDrawer.dart';

class FormularioPage extends StatefulWidget {
  @override
  State<FormularioPage> createState() => _FormularioPageState();
}

class _FormularioPageState extends State<FormularioPage> {
  final _formKey = GlobalKey<FormState>();

  //controllet para os campos de input do formulario
  final TextEditingController _nomeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _idadeController = TextEditingController();
  String _jsonOutput = '';

  void _gerarJson() {
    if (_formKey.currentState?.validate() ?? false) {
      final Map<String, dynamic> data = {
        'nome': _nomeController.text,
        'Email': _emailController.text,
        'idade': _idadeController.text,
      };
      setState(() {
        _jsonOutput = jsonEncode(data);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Formulario Page"),
      ),
      drawer: MenuDrawer(),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            children: [
              //formulario
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: _nomeController,
                      decoration: InputDecoration(labelText: 'Nome'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor insira o nome';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(labelText: 'Email'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor insira o email';
                        }
                        return null;
                      },
                    ),
                    TextFormField(
                      controller: _idadeController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(labelText: 'Idade'),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor insira a idade';
                        }
                        return null;
                      },
                    ),
                    SizedBox(height: 20),
                    ElevatebuttonComponent(
                      label: "Salvar",
                      onPressed: _gerarJson,
                      cor: Colors.green,
                    ),

                    SizedBox(height: 20),
                    Text(_jsonOutput),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
