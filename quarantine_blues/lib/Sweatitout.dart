import 'package:flutter/material.dart';
import './B.dart';
import './L.dart';
import './U.dart';
import './E.dart';
import './S.dart';
import 'package:adobe_xd/blend_mask.dart';

class Sweatitout extends StatelessWidget {
  Sweatitout({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(75.0, 258.0),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 30,
                  color: const Color(0xff000000),
                  letterSpacing: -0.26400000572204585,
                ),
                children: [
                  TextSpan(
                    text: 'Mind over matter.\n',
                  ),
                  TextSpan(
                    text: 'Mental well-being',
                    style: TextStyle(
                      fontSize: 18,
                      letterSpacing: -0.15840000343322752,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(67.0, 414.0),
            child: SizedBox(
              width: 177.0,
              height: 77.0,
              child: Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 30,
                    color: const Color(0xff000000),
                  ),
                  children: [
                    TextSpan(
                      text: 'Sweat it out.\n',
                    ),
                    TextSpan(
                      text: 'Physical well-being',
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-210.0, 114.0),
            child: Container(
              width: 884.0,
              height: 569.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 25.0),
            child: Text(
              'Sweat it Out',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 40,
                color: const Color(0xff72beab),
                letterSpacing: -0.3520000076293945,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(22.0, 73.0),
            child: Text(
              'Physical well- being.',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xff72beab),
                letterSpacing: -0.17600000381469724,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(1.0, -4.0),
            child:
                // Adobe XD layer: 'blues' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0.0, 688.0),
                  child: Container(
                    width: 360.0,
                    height: 76.0,
                    decoration: BoxDecoration(
                      color: const Color(0xffffffff),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x1a000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(24.0, 690.0),
                  child: Text(
                    'B',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 50,
                      color: const Color(0xff72beab),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(100.0, 707.0),
                  child: Text(
                    'L',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(167.0, 707.0),
                  child: Text(
                    'U',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(237.0, 707.0),
                  child: Text(
                    'E',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(305.0, 707.0),
                  child: Text(
                    'S',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
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
