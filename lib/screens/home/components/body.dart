import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/recomend_plant.dart';
import 'package:plant_app/screens/home/components/recommend_plant_card.dart';

import 'header_with_searchBox.dart';
import 'title_with_custom_underline.dart';
import 'title_with_more_btn.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    // It enables scrolling on small device
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreBtn(title: 'Recommended', press: () {}),
          // It will cover 40% of our total width
          RecomendsPlants(),
          TitleWithMoreBtn(title: 'Featured Plants', press: () {}),
        ],
      ),
    );
  }
}
