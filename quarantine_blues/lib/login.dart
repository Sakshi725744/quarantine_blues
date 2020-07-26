import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './B.dart';

class login extends StatelessWidget {
  login({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f0eb),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(53.0, 254.0),
            child: Text(
              'Quarantine Blues',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 35,
                color: const Color(0xff0c0c0c),
                letterSpacing: -0.3080000066757202,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(-60.0, 357.0),
            child: Container(
              width: 468.0,
              height: 224.0,
              decoration: BoxDecoration(
                color: const Color(0xfffca152),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-60.0, 605.0),
            child: Container(
              width: 468.0,
              height: 137.0,
              decoration: BoxDecoration(
                color: const Color(0xff71beaa),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(41.0, 377.0),
            child: Container(
              width: 285.0,
              height: 62.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(41.0, 456.0),
            child: Container(
              width: 285.0,
              height: 62.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(34.0),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(143.0, 536.0),
            child: SvgPicture.string(
              _svg_4kbbfl,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(64.0, 393.0),
            child: Text(
              'username',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xff71beaa),
                letterSpacing: -0.17600000381469724,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(63.0, 472.0),
            child: Text(
              'password',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xff71beaa),
                letterSpacing: -0.17600000381469724,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(164.0, 539.0),
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                color: const Color(0xffffffff),
                letterSpacing: -0.1408000030517578,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 653.0),
            child: Text(
              'Just a step away,\nFrom getting rid of all you blues.',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 16,
                color: const Color(0xffffffff),
                letterSpacing: -0.1408000030517578,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(53.0, 11.0),
            child:
                // Adobe XD layer: 'd835d681-2014-440e-…' (shape)
                Container(
              width: 244.0,
              height: 244.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: const AssetImage(''),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_4kbbfl =
    '<svg viewBox="143.0 536.0 80.0 29.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(143.0, 536.0)" d="M 14.5 0 L 65.5 0 C 73.50813293457031 0 80 6.491870880126953 80 14.5 C 80 22.50812911987305 73.50813293457031 29 65.5 29 L 14.5 29 C 6.491870880126953 29 0 22.50812911987305 0 14.5 C 0 6.491870880126953 6.491870880126953 0 14.5 0 Z" fill="#008466" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
