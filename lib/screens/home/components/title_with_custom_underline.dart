import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithCustomUnderLine extends StatelessWidget {
  const TitleWithCustomUnderLine({
    Key? key,
    this.text,
  }) : super(key: key);
  final String? text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: kDefaultPadding / 4),
      height: 24,
      child: Stack(
        children: [
          Text(
            text!,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              margin: const EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          )
        ],
      ),
    );
  }
}
