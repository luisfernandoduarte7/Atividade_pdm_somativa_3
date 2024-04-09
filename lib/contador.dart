import 'package:flutter/material.dart';
import 'package:somativa_3/'
    'cadastroProdutos.dart';
import 'package:somativa_3/cadastroUsuario.dart';

import 'home.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Contador(title: 'Flutter Demo Home Page'),
    );
  }
}
// Nomeacao
class Contador extends StatefulWidget {
  const Contador({super.key, required this.title});

  final String title;

  @override
  State createState() => HomePageState();
}
// Aplicacao
class HomePageState extends State<Contador> {

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme
                  .of(context)
                  .textTheme
                  .headlineMedium,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[


                ElevatedButton(
                  onPressed: _incrementCounter,
                  child: const Icon(Icons.add),
                ),
                ElevatedButton(
                  onPressed: _decrementCounter,
                  child: const Icon(Icons.remove),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}