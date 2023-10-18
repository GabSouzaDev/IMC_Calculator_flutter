import 'package:proj_imc_calculator/model/imc.dart';

class ImcRepository extends Imc {
  String _msg = "Teste";

  String resultadoIMC(imc) {
    try {
      if (imc < 16) {
        _msg = "Magreza Grave";
      } else if (imc < 17) {
        _msg = "Magreza Moderada";
      } else if (imc < 18.5) {
        _msg = "Magreza Leve";
      } else if (imc < 25) {
        _msg = "Saudável";
      } else if (imc < 30) {
        _msg = "Sobrepeso";
      } else if (imc < 35) {
        _msg = "Obesidade Grau I";
      } else if (imc < 40) {
        _msg = "Obesidade Grau II (Severa)";
      } else if (imc >= 40) {
        _msg = "Obesidade Grau III (Mórbida)";
      } else if (imc == false || imc.isEmpty) {
        _msg = "";
      }
    } catch (e) {
      _msg = "";
    }

    return _msg;
  }
}
