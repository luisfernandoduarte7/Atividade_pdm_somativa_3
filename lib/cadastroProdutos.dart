import 'dart:math';

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const CadastroProdutos(),
    );
  }
}

// nomeacao
class CadastroProdutos extends StatefulWidget {
  const CadastroProdutos({
    super.key,
  });

  @override
  State createState() => HomePageState();
}

//Aplicacao
class HomePageState extends State<CadastroProdutos> {
  TextEditingController prodController = new TextEditingController();
  TextEditingController descController = new TextEditingController();
  TextEditingController precoController = new TextEditingController();
  String _textoInfo = "Informe seus dados";

  void _limpar_Tela() {
    prodController.text = "";
    descController.text = "";
    precoController.text = "";
    setState(() {
      _textoInfo = "Informe os dados do produto!";
    });
  }

  void _cadatrar() {
    prodController.text = "";
    descController.text = "";
    precoController.text = "";
    setState(() {
      _textoInfo = "Produto cadastrado com sucesso!";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Cadastro do Produto"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          actions: <Widget>[
            IconButton(onPressed: _limpar_Tela, icon: Icon(Icons.refresh))
          ]),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            const Icon(
              Icons.business_sharp,
              size: 120.0,
              color: Colors.blue,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Produto",
                  labelStyle: TextStyle(color: Colors.black)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              controller: prodController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Descrição",
                  labelStyle: TextStyle(color: Colors.black)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              obscureText: true,
              controller: descController,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: "Preço",
                  labelStyle: TextStyle(color: Colors.black)),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 25.0),
              obscureText: true,
              controller: precoController,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 10),
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                    onPressed: _cadatrar, child: const Text("Cadastrar")),
              ),
            ),
            Text(_textoInfo,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black, fontSize: 25.0)),
          ],
        ),
      ),
    );
  }
}
