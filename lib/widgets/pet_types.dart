import 'package:flutter/material.dart';

import '../configuration.dart';

class PetTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (context, int index) {
          return Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.only(left: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: shadowList,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  categories[index]['iconPath'],
                  height: 50,
                  width: 50,
                  color: Colors.grey[700],
                ),
              ),
              Text(
                categories[index]['name'],
              ),
            ],
          );
        },
      ),
    );
  }
}
