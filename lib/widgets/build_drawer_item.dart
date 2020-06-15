import 'package:flutter/material.dart';

import '../configuration.dart';

class BuildDrawerItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: drawerItems
          .map(
            (drawerItem) => ListTile(
              leading: Icon(
                drawerItem['icon'],
                color: Colors.white,
              ),
              title: Text(
                drawerItem['title'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
