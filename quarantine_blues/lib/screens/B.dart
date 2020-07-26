import 'package:flutter/material.dart';
import 'package:quarantine_blues/screens/playList.dart';
class B extends StatefulWidget {
  @override
  _BState createState() => _BState();
}

class _BState extends State<B> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FlatButton(
          onPressed:(){ Navigator.push(
    context,
      MaterialPageRoute(builder: (context) => HomeScreen(genre: 'Fun',)),
    );},
          color: const Color(0xfffffffff).withOpacity(0.75),
          child:Container(
          height: MediaQuery.of(context).size.height*0.15,
          width: MediaQuery.of(context).size.width*0.7,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
                children:[Text(
              'Mind over matter',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 30,
                color: const Color(0xfff2931f),
                letterSpacing: -0.26400000572204585,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
                  Text(
                    'Mental well-being',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 20,
                      color: const Color(0xfff2931f),
                      letterSpacing: -0.17600000381469724,
                    ),
                    textAlign: TextAlign.left,
                  ),]),
          )
        ),
        SizedBox(
          height: 80,
        ),
        FlatButton(
          onPressed:(){ Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => HomeScreen(genre: 'calmness',)),
    );},
            color: const Color(0xfffffffff).withOpacity(0.75),
            child:Container(
              height: MediaQuery.of(context).size.height*0.15,
              width: MediaQuery.of(context).size.width*0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                  children:[Text(
                    'Sweat it out ',
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 30,
                      color: const Color(0xfff2931f),
                      letterSpacing: -0.26400000572204585,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                    Text(
                      'Physical well-being',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: const Color(0xfff2931f),
                        letterSpacing: -0.17600000381469724,
                      ),
                      textAlign: TextAlign.left,
                    ),]),
            )
        )
      ],
    );
  }
}
