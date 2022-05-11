import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedPlants extends StatelessWidget {
  const FeaturedPlants({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          FeaturePlants(image: 'assets/images/bottom_img_1.png', press: () {}),
          FeaturePlants(image: 'assets/images/bottom_img_2.png', press: () {}),
          FeaturePlants(image: 'assets/images/bottom_img_1.png', press: () {})
        ],
      ),
    );
  }
}

class FeaturePlants extends StatelessWidget {
  const FeaturePlants({
    Key? key,
    this.image,
    this.press,
  }) : super(key: key);
  final String? image;
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image!),
          ),
        ),
      ),
    );
  }
}
