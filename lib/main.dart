import 'package:flutter/material.dart';

import './screens/drawer_screen.dart';
import './screens/home_screen.dart';
import './screens/cat_detail_screen.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pet UI',
        home: MyApp(),
        theme: ThemeData(
          primarySwatch: Colors.teal,
          fontFamily: 'Circular',
        ),
        routes: {
          CatDetailScreen.routeName: (ctx) => CatDetailScreen(),
        },
      ),
    );

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DrawerScreen(),
          HomeScreen(),
        ],
      ),
    );
  }
}
