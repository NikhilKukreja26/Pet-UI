import 'package:flutter/material.dart';

class SearchHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 15.0,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
        vertical: 30.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(Icons.search),
          Text('Search pet to adopt'),
          Icon(Icons.settings),
        ],
      ),
    );
  }
}
