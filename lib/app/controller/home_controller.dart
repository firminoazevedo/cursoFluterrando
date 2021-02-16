import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/cupertino.dart';

class HomeController {
  final TextEditingController fromText;
  final TextEditingController toText;

  List<CurrencyModel> curriencies;
  CurrencyModel fromCurrencie;
  CurrencyModel toCurrencie;
  HomeController({this.fromText, this.toText}){
    curriencies = CurrencyModel.getCurrencies();
    fromCurrencie = curriencies[0];
    toCurrencie = curriencies[1];
  }

  convert(){
    String text = fromText.text; // VALOR PASSADO PELO USUARIO
    double value = double.tryParse(text.replaceAll(',', '.')) ?? 1.0; // CONVERTE O VALOR DE STRING PARA DOUBLE
    double valorDeRetorno; 
    // CALCULOS DE CONVERSÃO DE MOEDA
    switch (toCurrencie.name) {
      case 'Real':
        valorDeRetorno = value * fromCurrencie.real;
        break;
      case 'Dolar':
        valorDeRetorno = value * fromCurrencie.dolar;
        break;
      case 'Euro':
        valorDeRetorno = value * fromCurrencie.euro;
        break;
      case 'Bitcoin':
        valorDeRetorno = value * fromCurrencie.bitcoin;
        break;
    }
    //
    toText.text = valorDeRetorno.toStringAsFixed(2);
  }
}