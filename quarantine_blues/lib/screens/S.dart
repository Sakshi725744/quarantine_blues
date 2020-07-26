import 'package:flutter/material.dart';
class S extends StatefulWidget {
  @override
  _SState createState() => _SState();
}

class _SState extends State<S> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            color: const Color(0xfffffffff).withOpacity(0.75),
            child:Container(
              height: MediaQuery.of(context).size.height*0.20,
              width: MediaQuery.of(context).size.width*0.7,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[Text(
                    ' Meds meds meds',
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
                      'Reviews and applications.\nFind out what actually works.',
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
        Card(
            color: const Color(0xfffffffff).withOpacity(0.75),
            child:Container(
              height: MediaQuery.of(context).size.height*0.15,
              width: MediaQuery.of(context).size.width*0.7,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[Text(
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
                    Text(
                      'From home remedies to \nallopathy and everything \nin between.',
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
