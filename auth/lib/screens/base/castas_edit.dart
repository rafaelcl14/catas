import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CartasEdit extends StatelessWidget {

  CartasEdit({this.name, this.quantidade});

  final String name;
  final int quantidade;
  final bool status = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Editar Cartas",
          style: TextStyle(
            fontSize: 25,
          ),),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ex: Carta',
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Ex: Quantidade Carta',
              ),
            ),
            SizedBox(height: 10,),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      "Pedir",
                    style: TextStyle(
                      fontSize: 20
                    ),
                  ),
                  Checkbox(
                      value: status,
                      onChanged: (value){}
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 80,
              width: 80,
              child: RaisedButton(
                onPressed: (){},
                textColor: Colors.white,
                color: Colors.blue,
                child: Text(
                  "Salvar",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),

              ),
            )
          ],
        )
      ),
    );
  }
}
