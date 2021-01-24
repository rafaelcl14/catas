import 'package:flutter/material.dart';

class Giros extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text(
          "Giros",
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Text(
              "Aqui furutamente tera os links para receber giros e recompensa "
          ),
        ),
      ),
    );
  }

}
