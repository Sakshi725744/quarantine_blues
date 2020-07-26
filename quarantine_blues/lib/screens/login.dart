import 'package:flutter/material.dart';
import 'package:quarantine_blues/screens/B.dart';
import 'package:quarantine_blues/screens/blues.dart';
class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _email,_password;

  bool passwordVisible=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff4f0eb),
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [Container(
      height:MediaQuery.of(context).size.height*0.35 ,
      padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.10),
      child: Card(
        elevation: 0,
          child:
                Image.asset('asset/images/logo.png'),

          color:const Color(0xfff4f0eb)),

          
  ),
          Container(
              height:MediaQuery.of(context).size.height*0.05,
            child: Text("QUARANTINE BLUES",style: TextStyle(fontSize: 30),),
              color:const Color(0xfff4f0eb)
          ),
          SizedBox(
            height: 20 ,
          ),
          Container(
            height:MediaQuery.of(context).size.height*0.35 ,
            color: const Color(0xfffca152),
            width:double.infinity,
            padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.08),
            child: Column(
              children: [
                Card(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
                  color:  const Color(0xffffffff),
                  child: Container(
                    height: MediaQuery.of(context).size.height*0.07,
                    width:300,
                    child: TextFormField(
                      validator: (value) {
                        RegExp exp = new RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$");
                        if (value.isEmpty) {
                          return 'Please enter some text';
                        }
                        else if(!exp.hasMatch(value))
                        {
                          return 'Please enter valid id';
                        }
                        return null;
                      },
                      controller: _email,
                      style: TextStyle(color: const Color(0xff71beaa)),
                      decoration: InputDecoration(
                          labelText: 'Email',
                          border: InputBorder.none,
                          labelStyle: TextStyle(color:Color(0xffa8a8a8) ),
                          prefixIcon: const Icon(Icons.person,color: Color(0xffa8a8a8),)),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,

                ),
               Card(
                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
                 color:  const Color(0xffffffff),
                 child:Container(
                   height: MediaQuery.of(context).size.height*0.07,
                   width:300,
                   child: TextFormField(
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    controller: _password,
                    style: TextStyle(color: const Color(0xff71beaa)),
                    obscureText: passwordVisible,
                    decoration: InputDecoration(
                      labelText: "Enter Password",
                      border: InputBorder.none,
                      labelStyle: TextStyle(color:Color(0xffa8a8a8) ),
                      prefixIcon:const Icon(Icons.security,color: Color(0xffa8a8a8),),
                      suffixIcon: IconButton(icon:Icon(Icons.remove_red_eye,color: Color(0xffa8a8a8)), onPressed: (){
                        setState(() {
                          passwordVisible=!passwordVisible;

                        });
                      },),



                    ),
                ),
                 ),),
                SizedBox(
                  height: 20,
                ),
                Card(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(34)),
                    color: Color(0xff008466),
                    child: Container(
                      height:MediaQuery.of(context).size.height*0.05,
                        child: FlatButton(
                          onPressed: () {Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Blues()),
    );},
                          child: Text('LOGIN',style: TextStyle(color: const Color(0xffffffff),)),)))


              ],
            ),

          ),
          SizedBox(
            height: MediaQuery.of(context).size.height*0.03,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height*0.13,
            color: const Color(0xff71beaa),
            padding: EdgeInsets.all(10),
            child: Text(
              'Just a step away,\nFrom getting rid of all you blues.',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 20,
                color: const Color(0xffffffff),
                letterSpacing: -0.1408000030517578,
              ),
              textAlign: TextAlign.left,
            ),

          )

      ]),

    );
  }
}
