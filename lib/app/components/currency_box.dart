
import 'package:conversor_curso/app/models/currency_model.dart';
import 'package:flutter/material.dart';

class CurrencyBox extends StatelessWidget {
  final List<CurrencyModel> items;
  final CurrencyModel selectedItem;
  final TextEditingController controller;
  final void Function(CurrencyModel model) onChanged;

  const CurrencyBox({Key key, this.items, this.controller, this.onChanged, this.selectedItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: DropdownButton<CurrencyModel>(
            value: selectedItem,
            itemHeight: 65,
            isExpanded: true,
            underline: Container(color: Colors.amber, height: 1,),
            items: items.map((e) => DropdownMenuItem(
              value: e,
              child: Text(e.name))).toList(),
            onChanged: onChanged)),
          SizedBox(width: 20,),
        Expanded(
          flex: 2,
          child: TextField(
            controller: controller,
            decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.amber))
            ),
          ),
        ),
      ],
    );
  }
}