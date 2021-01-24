import 'package:auth/models/page_manager.dart';
import 'file:///C:/Users/rafae/Documents/Projetos%20Flutter%202021/Login%20com%20Facebook/auth/lib/perfil/perfilUser.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class BaseScreen extends StatelessWidget {
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Provider(
      create: (_) => PageManager(pageController),
      child: PageView(
        controller: pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Scaffold(
            appBar: AppBar(
              title: const Text("Perfil",
              style: TextStyle(
                fontSize: 25
              ),),
              centerTitle: true,
            ),
            body: PerfilUser(),
          ),
        ],
      ),
    );
  }
}
