import 'package:flutter/material.dart';

class BuildDrawerBottomItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          'Settings',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Container(
          width: 2.0,
          height: 25.0,
          color: Colors.white,
        ),
        const SizedBox(
          width: 10.0,
        ),
        Text(
          'Logout',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
