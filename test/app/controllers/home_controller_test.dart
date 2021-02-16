import 'package:conversor_curso/app/controller/home_controller.dart';
import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';

main() {
  TextEditingController toText = TextEditingController();
  TextEditingController fromText = TextEditingController();
  final homeController = HomeController(toText: toText, fromText: fromText);

  test('Converter de dolar para real', () {
    fromText.text = '2';
    homeController.fromCurrencie = CurrencyModel(name: 'Dolar', real: 5.65, dolar: 1.0, bitcoin: 0.0000088, euro: 1.17);
    homeController.toCurrencie = CurrencyModel(name: 'Euro', real: 6.62, dolar: 6.62, bitcoin: 0.00010, euro: 1.0);
    homeController.convert();
    expect(toText.text, '2.34');
  });

  test('Teste com vírgula', () {
    fromText.text = '2,0';
    homeController.fromCurrencie = CurrencyModel(name: 'Dolar', real: 5.65, dolar: 1.0, bitcoin: 0.0000088, euro: 1.17);
    homeController.toCurrencie = CurrencyModel(name: 'Euro', real: 6.62, dolar: 6.62, bitcoin: 0.00010, euro: 1.0);
    homeController.convert();
    expect(toText.text, '2.34');
  });
}