import 'package:flutter/material.dart';
import 'package:plant_app_ui_ux/constraints.dart';

import 'featuredPlants.dart';
import 'headerWithSearchBar.dart';
import 'recomendedPlants.dart';
import 'titleWithMoreBtn.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBar(size: size),
          TitleWithMoreButton(title: 'Recomended', press: () {}),
          RecommendedPlants(),
          TitleWithMoreButton(title: 'Featured Plants', press: () {}),
          FeaturedPlants(),
          SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}
