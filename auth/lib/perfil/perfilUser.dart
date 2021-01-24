import 'package:auth/models/user.dart';
import 'package:auth/perfil/repository/perfil_repository_impl.dart';
import 'package:auth/screens/base/cartas.dart';
import 'package:auth/screens/base/gitos.dart';
import 'package:auth/screens/base/pesquisa_cartas.dart';
import 'package:auth/screens/base/solicta_cartas.dart';
import 'package:flutter/material.dart';

class PerfilUser extends StatelessWidget {

  final repository = PerfilRepositoryImpl();


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.transparent,
                    child: CircleAvatar(
                      child: Icon(Icons.person,size: 80,)
                    )
                  ),
                ],
          ),
          SizedBox(height: 15,),
          FutureBuilder(
            future: repository.getUsers(),
            builder: (context, snapshot){
              if(snapshot.hasError){
                return Container(child: Text("Erro"),);
              }else if (snapshot.hasData){
                final users = snapshot.data;
                return Column(
                  children: [
                  Text(
                   users[0][0]['name'],
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                  ),
                ),
                  SizedBox(height: 15,),
                    Text(
                      users[0][0]['email'],
                      style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ],
                );
              }
            }
          ),
          SizedBox(height: 15,),
         Divider(
           color: Colors.black,
         ),
          SizedBox(height: 15,),
         Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Container(
               height: 80,
               width: 80,
               child: RaisedButton(
                 color:  Colors.blue ,
                 textColor: Colors.white,
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Cartas()),
                   );
                 },
                 child: Text(
                   "Cartas",
                   style: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.bold
                   ),
                 ),
               ),
             ),
             SizedBox(height: 15,),
             Container(
               height: 80,
               width: 80,
               child: RaisedButton(
                 color:  Colors.blue ,
                 textColor: Colors.white,
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => PesquisaCartas()),
                   );
                 },
                 child: Text(
                   "Pesquisar Cartas",
                   style: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.bold
                   ),
                 ),
               ),
             ),
             SizedBox(height: 15,),
             Container(
               height: 80,
               width: 80,
               child: RaisedButton(
                 color:  Colors.blue ,
                 textColor: Colors.white,
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => SolicitaCartas()),
                   );
                 },
                 child: Text(
                   "Solicitações de Cartas",
                   style: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.bold
                   ),
                 ),
               ),
             ),
             SizedBox(height: 15,),
             Container(
               height: 80,
               width: 80,
               child: RaisedButton(
                 color:  Colors.blue ,
                 textColor: Colors.white,
                 onPressed: () {
                   Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => Giros()),
                   );
                 },
                 child: Text(
                   "Giros",
                   style: TextStyle(
                       fontSize: 25,
                       fontWeight: FontWeight.bold
                   ),
                 ),
               ),
             ),

           ],
         )
        ],
      ),
    );
  }
}
