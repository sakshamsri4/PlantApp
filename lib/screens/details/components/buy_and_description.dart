import 'package:flutter/material.dart';

import '../../../constants.dart';

class BuyAndDescription extends StatelessWidget {
  const BuyAndDescription({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 84,
          width: size.width / 2,
          child: TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor,
              primary: Colors.white,
              textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                ),
              ),
            ),
            child: Text('Buy Now'),
            onPressed: () {},
          ),
        ),
        Expanded(
          child: TextButton(
            onPressed: () {},
            child: Text(
              'Description',
              style: TextStyle(color: Colors.black54),
            ),
          ),
        ),
      ],
    );
  }
}
