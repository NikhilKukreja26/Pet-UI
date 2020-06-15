import 'package:flutter/material.dart';

import '../configuration.dart';
import '../widgets/build_drawer_header.dart';
import '../widgets/build_drawer_item.dart';
import '../widgets/build_drawer_bottom_item.dart';

class DrawerScreen extends StatefulWidget {
  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: 10.0,
        top: 50.0,
        bottom: 30.0,
      ),
      color: primaryGreen,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          BuildDrawerHeader(), // Drawer Header Widget
          BuildDrawerItem(), // Drawer Items Widget
          BuildDrawerBottomItem(), // Drawer Bottom Item Widget
        ],
      ),
    );
  }
}
