class Imc {
  String _peso = "";
  String _altura = "";
  double _imc = 0.0;

  String get peso => _peso;

  String get altura => _altura;

  set peso(String peso) {
    _peso = peso;
  }

  set altura(String altura) {
    _altura = altura;
  }

  set imc(double imc) {
    _imc = imc;
  }

  String calcularIMC(peso, altura) {
    if (peso == null || peso.isEmpty || altura == null || altura.isEmpty) {
      return 'Aguardando entrada';
    }
    try {
      _imc =
          (double.parse(peso) / (double.parse(altura) * double.parse(altura)));
      return _imc.toStringAsFixed(1);
    } catch (e) {
      return 'Aguardando entrada';
    }
  }

  double get imc => _imc;
}
