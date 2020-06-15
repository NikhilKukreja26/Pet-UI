import 'package:flutter/material.dart';

import '../configuration.dart';

class BuildLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'Location',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        Row(
          children: <Widget>[
            Icon(
              Icons.location_on,
              color: primaryGreen,
            ),
            Text(
              'India',
              style: TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
