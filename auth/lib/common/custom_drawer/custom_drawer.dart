import 'package:auth/common/custom_drawer/drawer_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerTile(
            title: "Inicio",
            page: 0,
          ),
          DrawerTile(
            title: "Perfil",
            page: 1,
          ),
          DrawerTile(
            title: "Doar Cartas/ Pedir Cartas",
            page: 2,
          ),
        ],
      ),
    );
  }
}
