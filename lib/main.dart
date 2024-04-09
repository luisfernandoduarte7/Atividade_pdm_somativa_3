import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const Imc());
}

class Imc extends StatelessWidget {
  const Imc({super.key});

  // A parte que está ligando com home
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Home(),
    );
  }
}