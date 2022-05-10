import 'package:flutter/material.dart';

import 'recommend_plant_card.dart';

class RecomendsPlants extends StatelessWidget {
  const RecomendsPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          RecommendPlantCard(
            title: 'Samantha',
            image: 'assets/images/image_1.png',
            country: 'Russia',
            price: 400,
            press: () {},
          ),
          RecommendPlantCard(
            title: 'Samantha',
            image: 'assets/images/image_2.png',
            country: 'Russia',
            price: 400,
            press: () {},
          ),
          RecommendPlantCard(
            title: 'Samantha',
            image: 'assets/images/image_3.png',
            country: 'Russia',
            price: 400,
            press: () {},
          ),
        ],
      ),
    );
  }
}
