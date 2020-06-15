import 'package:flutter/material.dart';

class BuildCircleAvatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 30.0,
      child: Image.asset('assets/images/nikhil.png'),
      backgroundColor: Colors.transparent,
    );
  }
}
