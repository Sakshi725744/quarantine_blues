import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './S1.dart';
import './S2.dart';
import './B.dart';
import './L.dart';
import './U.dart';
import './E.dart';

class S extends StatelessWidget {
  S({
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
            offset: Offset(49.0, 172.0),
            child: SvgPicture.string(
              _svg_h0xriy,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(67.0, 196.0),
            child: Text(
              'Meds meds meds',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xfff2931f),
                letterSpacing: -0.26400000572204585,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(49.0, 360.0),
            child: SvgPicture.string(
              _svg_fytsq,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(67.0, 390.0),
            child: Text(
              'Gadgets ',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xfff2931f),
                letterSpacing: -0.26400000572204585,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(67.0, 428.0),
            child: Text(
              'Reviews and applications.\nFind out what actually works.',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xfff2931f),
                letterSpacing: -0.17600000381469724,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(19.0, 25.0),
            child: Text(
              'Support Kit',
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
              'We got you covered .',
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
                  offset: Offset(27.0, 707.0),
                  child: Text(
                    'B',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(97.0, 707.0),
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
                  offset: Offset(164.0, 707.0),
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
                  offset: Offset(234.0, 707.0),
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
                  offset: Offset(305.0, 691.0),
                  child: Text(
                    'S',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 50,
                      color: const Color(0xff72beab),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(68.0, 232.0),
            child: SizedBox(
              width: 383.0,
              height: 102.0,
              child: Text(
                'From home remedies to \nallopathy and everything \nin between.',
                style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 20,
                  color: const Color(0xfff2931f),
                  letterSpacing: -0.17600000381469724,
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_h0xriy =
    '<svg viewBox="49.0 172.0 287.2 149.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(49.0, 172.0)" d="M 0 0 L 287.1767578125 0 L 287.1767578125 149 L 0 149 L 0 0 Z" fill="#ffffff" fill-opacity="0.75" stroke="none" stroke-width="1" stroke-opacity="0.75" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_fytsq =
    '<svg viewBox="49.0 360.0 287.2 149.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(49.0, 360.0)" d="M 0 0 L 287.1767578125 0 L 287.1767578125 149 L 0 149 L 0 0 Z" fill="#ffffff" fill-opacity="0.75" stroke="none" stroke-width="1" stroke-opacity="0.75" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
