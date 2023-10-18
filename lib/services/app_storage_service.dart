import 'package:shared_preferences/shared_preferences.dart';

enum PREFS_KEYS { CHAVE_PESO, CHAVE_ALTURA }

class AppStorageService {
  setPeso(double peso) {
    _setDouble(PREFS_KEYS.CHAVE_PESO.toString(), peso);
  }

  Future<double> getPeso() async {
    return _getDouble(PREFS_KEYS.CHAVE_PESO.toString());
  }

  setAltura(double peso) {
    _setDouble(PREFS_KEYS.CHAVE_ALTURA.toString(), peso);
  }

  Future<double> getAltura() async {
    return _getDouble(PREFS_KEYS.CHAVE_ALTURA.toString());
  }

  _setDouble(String key, double value) async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setDouble(key, value);
  }

  Future<double> _getDouble(String key) async {
    var prefs = await SharedPreferences.getInstance();
    return prefs.getDouble(key) ?? 0.0;
  }
}
