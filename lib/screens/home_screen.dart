import 'package:flutter/material.dart';

import '../configuration.dart';
import '../widgets/cat_item.dart';
import '../widgets/search_header.dart';
import '../widgets/pet_types.dart';
import '../widgets/build_circle_avatar.dart';
import '../widgets/build_location.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactor = 1;

  bool isDrawerOpen = false;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactor)
        ..rotateY(isDrawerOpen ? -0.5 : 0.0),
      duration: Duration(milliseconds: 250),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(isDrawerOpen ? 40.0 : 0.0),
      ),
      child: Container(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 50.0,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    isDrawerOpen
                        ? IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              size: 30.0,
                            ),
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactor = 1;
                                isDrawerOpen = false;
                              });
                            },
                          )
                        : IconButton(
                            icon: Icon(
                              Icons.menu,
                              size: 30.0,
                            ),
                            onPressed: () {
                              setState(() {
                                xOffset = 230;
                                yOffset = 150;
                                scaleFactor = 0.6;
                                isDrawerOpen = true;
                              });
                            },
                          ),
                    BuildLocation(),
                    BuildCircleAvatar(),
                  ],
                ),
              ),
              SearchHeader(),
              PetTypes(),
              ListView.builder(
                shrinkWrap: true,
                itemCount: catDetails.length,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, int index) {
                  return CatItem(
                    id: catDetails[index].id,
                    image: catDetails[index].catImage,
                    type: catDetails[index].catType,
                    name: catDetails[index].catTitle,
                    age: catDetails[index].catYearsOld,
                    distance: catDetails[index].catDistance,
                  );
                },
              ),
              const SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
