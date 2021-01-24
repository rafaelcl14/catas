import 'package:auth/models/cartas_manager.dart';
import 'package:auth/screens/base/castas_edit.dart';
import 'package:flutter/material.dart';
import 'package:grouped_list/grouped_list.dart';
class Cartas extends StatelessWidget {

  List cartas = [
    {'name': 'Alpaca', 'colecao': 'Bichinhos', 'quantidade': '10', 'status': '1'},
    {'name': 'Touro Poderoso', 'colecao': 'Bichinhos', 'quantidade': '1', 'status': '2'},
    {'name': 'Gato Fofinho', 'colecao': 'Bichinhos', 'quantidade': '15', 'status': '1'},
    {'name': 'Robô Gueixa', 'colecao': 'Japão', 'quantidade': '10', 'status': '1'},
    {'name': 'Maquina de Guerra', 'colecao': 'Japão', 'quantidade': '10', 'status': '2'},
    {'name': 'Veloz do Espaço', 'colecao': 'Japão', 'quantidade': '10', 'status': '1'},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            "Cartas",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: GroupedListView<dynamic, String>(
        elements: cartas,
        groupBy: (element) => element['colecao'],
        groupComparator: (value1, value2) => value2.compareTo(value1),
        itemComparator: (item1, item2) =>
            item1['name'].compareTo(item2['name']),
        order: GroupedListOrder.ASC,
        useStickyGroupSeparators: true,
        groupSeparatorBuilder: (String value) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        itemBuilder: (c, element) {
          return Card(
            elevation: 8.0,
            margin: new EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
            child: GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CartasEdit()),
                );
              },
              child: Container(
                child: Center(
                 child: ListTile(
                   contentPadding:
                   EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                   title: Text(element['name'],),
                 ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
