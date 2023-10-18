import 'package:flutter/material.dart';
import 'package:proj_imc_calculator/model/imc.dart';
import 'package:proj_imc_calculator/pages/repositories/imc_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var imcRepository = ImcRepository();
  var imc = Imc();
  var pesoController = TextEditingController();
  var alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(title: const Text("Calculadora IMC")),
          body: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: SizedBox(
                width: double.infinity,
                child: Container(
                  margin: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Center(
                        child: Text(
                          "Bem-vindo!",
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.center,
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: "Informe seu peso",
                            ),
                            controller: pesoController,
                            onChanged: (value) {
                              setState(() {
                                debugPrint(value);
                              });
                            },
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(horizontal: 20),
                          alignment: Alignment.center,
                          child: TextField(
                            decoration: const InputDecoration(
                                hintText: "Informe sua altura"),
                            controller: alturaController,
                            onChanged: (value) {
                              setState(() {
                                debugPrint(value);
                              });
                            },
                          )),
                      const SizedBox(
                        height: 80,
                      ),
                      Center(
                          child: Text(
                        imc.calcularIMC(
                            pesoController.text, alturaController.text),
                        style: const TextStyle(fontSize: 30),
                      )),
                      Center(
                        child: Text(
                          imcRepository.resultadoIMC(imc.imc),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ),
                      const SizedBox(
                        height: 80,
                      ),
                      Container(
                          color: const Color.fromARGB(136, 155, 39, 176),
                          width: double.infinity,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.all(20),
                          child: InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (BuildContext bc) {
                                      return const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  "IMC",
                                                  textAlign: TextAlign.start,
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                                Expanded(
                                                    child: Text(
                                                  "Classificação",
                                                  style: TextStyle(
                                                      fontSize: 15,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                  textAlign: TextAlign.left,
                                                )),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  "Menor que 16",
                                                  textAlign: TextAlign.left,
                                                )),
                                                Expanded(
                                                    child: Text(
                                                  "Magreza Grave",
                                                  textAlign: TextAlign.left,
                                                )),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  "De 16 até 16,9",
                                                  textAlign: TextAlign.left,
                                                )),
                                                Expanded(
                                                    child: Text(
                                                  "Magreza Moderada",
                                                  textAlign: TextAlign.left,
                                                )),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  "De 17 até 18,4",
                                                  textAlign: TextAlign.left,
                                                )),
                                                Expanded(
                                                    child: Text(
                                                  "Magreza Leve",
                                                  textAlign: TextAlign.left,
                                                )),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  "De 18,5 até 24,9",
                                                  textAlign: TextAlign.left,
                                                )),
                                                Expanded(
                                                    child: Text(
                                                  "Saudável",
                                                  textAlign: TextAlign.left,
                                                )),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  "De 25 até 29,9",
                                                  textAlign: TextAlign.left,
                                                )),
                                                Expanded(
                                                    child: Text(
                                                  "Sobrepeso",
                                                  textAlign: TextAlign.left,
                                                )),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  "De 30 até 34,9",
                                                  textAlign: TextAlign.left,
                                                )),
                                                Expanded(
                                                    child: Text(
                                                  "Obesidade Grau I",
                                                  textAlign: TextAlign.left,
                                                )),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  "De 35 até 39,9",
                                                  textAlign: TextAlign.left,
                                                )),
                                                Expanded(
                                                  child: Text(
                                                    "Obesidade Grau II (Severa)",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Expanded(
                                                    child: Text(
                                                  "Maior ou igual a 40",
                                                  textAlign: TextAlign.left,
                                                )),
                                                Expanded(
                                                  child: Text(
                                                    "Obesidade Grau III (Mórbida)",
                                                    textAlign: TextAlign.left,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              child: const Text("VER TABELA IMC"))),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
