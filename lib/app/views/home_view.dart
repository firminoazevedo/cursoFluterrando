import 'package:conversor_curso/app/components/currency_box.dart';
import 'package:conversor_curso/app/controller/home_controller.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TextEditingController fromText =TextEditingController();
  TextEditingController toText =TextEditingController();
  HomeController homeController;

  @override
  void initState() {
    super.initState();
    homeController = HomeController(fromText: fromText, toText: toText);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Image.network('https://images-na.ssl-images-amazon.com/images/I/510WmeXkLXL.png', width: MediaQuery.of(context).size.width * 0.6,),
              CurrencyBox(selectedItem: homeController.fromCurrencie, controller: fromText, onChanged: (model){
                setState(() {
                  homeController.fromCurrencie = model;
                });
              }, items: homeController.curriencies,),
              CurrencyBox(selectedItem: homeController.toCurrencie, controller: toText, onChanged: (model){
                setState(() {
                  homeController.toCurrencie = model;
                });
              }, items: homeController.curriencies,),
              SizedBox(height: 30,),
              RaisedButton(
                color: Colors.blue,
                onPressed: (){
                  homeController.convert();
                }, child: Text('Converter')),
            ],
          ),
        ),
      ),
    );
  }
}