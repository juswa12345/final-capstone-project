// ignore_for_file: void_checks

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:project_management/models/provider/drawer_manager.dart';
import 'package:project_management/utilities/app_bar_design.dart';
import 'package:project_management/widgets/card_drawer.dart';
import 'package:project_management/utilities/drawer_items.dart';
import 'package:provider/provider.dart';

class AppDrawer extends StatefulWidget {
  @override
  State<AppDrawer> createState() => _AppDrawerState();

  const AppDrawer({Key? key}) : super(key: key);
}

class _AppDrawerState extends State<AppDrawer> {
  @override
  Widget build(BuildContext context) {
    final manager = Provider.of<DrawerManager>(context);
    return Drawer(
      width: 300,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            appBar(context),
            GestureDetector(
              onTap: () {
                setState(() {
                  manager.changeCurrent(0);
                  Navigator.pop(context);
                });
              },
              child: CardDrawer(
                drawerItems: drawerItem[0],
                isSelected: manager.current == 0 ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  manager.changeCurrent(1);
                  Navigator.pop(context);
                });
              },
              child: CardDrawer(
                drawerItems: drawerItem[1],
                isSelected: manager.current == 1 ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  manager.changeCurrent(2);
                  Navigator.pop(context);
                });
              },
              child: CardDrawer(
                drawerItems: drawerItem[2],
                isSelected: manager.current == 2 ? true : false,
              ),
            ),
            GestureDetector(
              onTap: () => FirebaseAuth.instance.signOut(),
              child: CardDrawer(
                drawerItems: drawerItem[3],
                isSelected: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
