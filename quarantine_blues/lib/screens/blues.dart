import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:quarantine_blues/models/video.dart';
import 'package:quarantine_blues/screens/B.dart';
import 'package:quarantine_blues/screens/S.dart';
import 'package:quarantine_blues/screens/playList.dart';
import 'package:quarantine_blues/screens/video_display.dart';
import 'package:quarantine_blues/services/implementation.dart';
class Blues extends StatefulWidget {
  @override
  _BState createState() => _BState();
}

class _BState extends State<Blues> {
  String _message = '';
  final FirebaseMessaging _firebaseMessaging = FirebaseMessaging();
   final number = new ValueNotifier(0);
   List<Video> video_s;
   List<String> title = ['Body and Soul','Support Kit','Love','Updates','Enhance'];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMessage();
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
    _firebaseMessaging.getToken().then((String token) {
      assert(token != null);
      print(token);
    });
  }
  void getMessage(){
    _firebaseMessaging.configure(
        onMessage: (Map<String, dynamic> message) async {
          print('on message $message');
          setState(() => _message = message["notification"]["title"]);
        }, onResume: (Map<String, dynamic> message) async {
      print('on resume $message');
      setState(() => _message = message["notification"]["title"]);
    }, onLaunch: (Map<String, dynamic> message) async {
      print('on launch $message');
      setState(() => _message = message["notification"]["title"]);
    });
  }

     @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f0eb),
      body:ValueListenableBuilder<int>(
        valueListenable: number,
        builder:(context,value,child) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(0, 45, 5, 5),
                child: Column(
                  children: [Text(
                   title[number.value],
                    style: TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 40,
                      color: const Color(0xff72beab),
                      letterSpacing: -0.3520000076293945,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                    Text(
                      'Hang in there, you got it in control.',
                      style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 20,
                        color: const Color(0xff72beab),
                        letterSpacing: -0.17600000381469724,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ],
                ),
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.15,
              ),
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("asset/images/background.jpg"),
                    fit: BoxFit.cover,
                  ),

                ),
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.78,
                width: double.infinity,
                padding: EdgeInsets.all(50),
                child: MyWidget(number),
              ),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.07,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Flexible(
                      child: FlatButton(
                        onPressed: (){
                          print(number);
                          number.value = 0;
                          print(number);

                        },
                        child: Text("B", style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 30,
                          color: const Color(0xff000000),
                        ),),
                      ),
                    ),
                    Flexible(
                      child: FlatButton(
                        onPressed: (){
                          number.value=2;
                        },
                        child: Text("L", style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 30,
                          color: const Color(0xff000000),
                        ),),
                      ),
                    ), Flexible(
                      child: FlatButton(
                        onPressed: (){

                          number.value=3;
                        },
                        child: Text("U", style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 30,
                          color: const Color(0xff000000),
                        ),),
                      ),
                    ), Flexible(
                      child: FlatButton(
                        onPressed: (){
                          number.value=4;},
                        child: Text("E", style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 30,
                          color: const Color(0xff000000),
                        ),),
                      ),
                    ), Flexible(
                      child: FlatButton(
                        onPressed: (){number.value = 1;},
                        child: Text("S", style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 30,
                          color: const Color(0xff000000),

                        ),),
                      ),
                    ),

                  ],
                ),
              )
            ],
          );

        }
      ),
    );
  }

}

class MyWidget extends StatelessWidget {
  final ValueListenable<int> number;

  MyWidget(this.number);

  @override
  Widget build(BuildContext context) {
    if(number.value==0)
      return B();
    else if(number.value==1)
      return S();
    else if(number.value==2)
      return HomeScreen(genre: "Google");
    else if(number.value==3)
      return HomeScreen(genre: "Covid");
    else if(number.value==4)
      return HomeScreen(genre: "Games");

  }
}

