import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'constant.dart';
import 'main.dart';

class Myheader extends StatelessWidget {
  final String image;
  final String top;
  final String buttom;

  const Myheader({
    this.image,
    this.buttom,
    this.top,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: Myclipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 20),
        height: 350,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Color(0xFF3383CD),
              Color(0xFF11249f),
            ]),
            image:
                DecorationImage(image: AssetImage("assets/images/virus.png"))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Align(
              alignment: Alignment.topRight,
              child: SvgPicture.asset("assets/icons/menu.svg"),
            ),
            SizedBox(height: 20),
            Expanded(
                child: Stack(
              children: <Widget>[
                SvgPicture.asset(
                 image,
                ),
                Positioned(
                    top: 20,
                    left: 150,
                    child: Text(
                      '$top\n $buttom',
                      style: kHeadingTextStyle.copyWith(
                        color: Colors.white,
                      ),
                    )),
                Container(),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
