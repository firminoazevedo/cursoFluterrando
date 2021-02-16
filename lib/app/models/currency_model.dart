  class CurrencyModel{
    final String name;
    final double real;
    final double dolar;
    final double euro;
    final double bitcoin;

  CurrencyModel({this.name, this.real, this.dolar, this.euro, this.bitcoin});

  static List<CurrencyModel> getCurrencies (){
    return <CurrencyModel>[
    CurrencyModel(name: 'Real', real: 1, dolar: 0.18, bitcoin: 0.000016, euro: 0.15),
    CurrencyModel(name: 'Dolar', real: 5.65, dolar: 1.0, bitcoin: 0.0000088, euro: 0.85),
    CurrencyModel(name: 'Euro', real: 6.62, dolar: 1.17, bitcoin: 0.00010, euro: 1.0),
    CurrencyModel(name: 'Bitcoin', real: 64116.51, dolar: 11351.30, bitcoin: 1, euro: 9689.54),
    ];
  }
  }