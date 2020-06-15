import 'package:flutter/material.dart';

class CatModel {
  final String id;
  final String catTitle;
  final AssetImage catImage;
  final String catType;
  final double catYearsOld;
  final double catDistance;

  CatModel({
    @required this.id,
    @required this.catTitle,
    @required this.catImage,
    @required this.catType,
    @required this.catYearsOld,
    @required this.catDistance,
  });
}
