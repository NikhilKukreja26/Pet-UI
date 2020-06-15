import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './models/cat_model.dart';

Color primaryGreen = Color(0xFF416d6d);

List<BoxShadow> shadowList = [
  BoxShadow(
    color: Colors.grey[300],
    blurRadius: 30.0,
    offset: Offset(0, 10),
  ),
];

List<Map<String, String>> categories = [
  {'name': 'Cats', 'iconPath': 'assets/images/cat.png'},
  {'name': 'Dogs', 'iconPath': 'assets/images/dog.png'},
  {'name': 'Bunnies', 'iconPath': 'assets/images/rabbit.png'},
  {'name': 'Parrots', 'iconPath': 'assets/images/parrot.png'},
  {'name': 'Horses', 'iconPath': 'assets/images/horse.png'}
];

List<CatModel> catDetails = [
  CatModel(
    id: DateTime.now().toString(),
    catTitle: 'Sola',
    catImage: AssetImage('assets/images/pet-cat2.png'),
    catType: 'Abyssinian Cat',
    catYearsOld: 2,
    catDistance: 3.6,
  ),
  CatModel(
    id: DateTime.now().toString(),
    catTitle: 'Orion',
    catImage: AssetImage('assets/images/pet-cat1.png'),
    catType: 'Abyssinian Cat',
    catYearsOld: 1.8,
    catDistance: 7.8,
  ),
];

List<Map<String, Object>> drawerItems = [
  {'icon': FontAwesomeIcons.paw, 'title': 'Adoption'},
  {'icon': Icons.mail, 'title': 'Donation'},
  {'icon': FontAwesomeIcons.plus, 'title': 'Add pet'},
  {'icon': Icons.favorite, 'title': 'Favorites'},
  {'icon': Icons.mail, 'title': 'Messages'},
  {'icon': FontAwesomeIcons.userAlt, 'title': 'Profile'},
];
