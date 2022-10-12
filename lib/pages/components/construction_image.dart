import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../constants.dart';

class ConstructionImage extends StatelessWidget {
  const ConstructionImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        /*Container(
          padding:
                  const EdgeInsets.symmetric(horizontal: 30.0, vertical: 16),
          color: Color.fromARGB(255, 128, 255, 189),
          child:(
            Text(
              "PAGE UNDER CONSTRUCTION",
              style: TextStyle(
              color: Colors.white,
              fontSize: 12
              ),
            )
          ),
        ), */
        SizedBox(height: defaultPadding *2),
        Container(
          child: (
              Expanded(
              flex: 8,
              child: SvgPicture.asset(
                "assets/icons/under-construction.svg",
              ),
            )
          )
        ),
        SizedBox(height: defaultPadding *2),
      ],
    );
  }
}
