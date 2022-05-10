import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';

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
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          const TitleWithMoreBtn(title: 'Recommended'),
          Container(
            width: size.width * 0.4,
            child: Column(
              children: [
                Image.asset('assets/images/image_1.png'),
                Container(
                  margin: EdgeInsets.only(
                    left: kDefaultPadding,
                    top: kDefaultPadding / 2,
                    bottom: kDefaultPadding * 2.5,
                  ),
                  padding: EdgeInsets.all(kDefaultPadding / 2),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 10),
                        blurRadius: 50,
                        color: kPrimaryColor.withOpacity(.23),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
