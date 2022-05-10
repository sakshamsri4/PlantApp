import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

import 'title_with_custom_underline.dart';

class TitleWithMoreBtn extends StatelessWidget {
  const TitleWithMoreBtn({
    Key? key,
    this.title,
    this.press,
  }) : super(key: key);
  final String? title;
  final void Function()? press;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderLine(text: title),
          Spacer(),
          TextButton(
              style: TextButton.styleFrom(
                backgroundColor: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              onPressed: press,
              child: Text(
                'More',
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
