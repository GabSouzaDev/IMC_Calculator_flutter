import 'package:flutter/material.dart';

class ResultImcPage extends StatefulWidget {
  const ResultImcPage({super.key});

  @override
  State<ResultImcPage> createState() => _ResultImcPageState();
}

class _ResultImcPageState extends State<ResultImcPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora IMC"),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Center(
          child: Text("Resultado do seu IMC"),
        ),
      ),
    );
  }
}
