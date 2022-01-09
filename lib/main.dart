//@dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shield/Register.dart';
import 'package:shield/Splashscreen.dart';
import 'package:shield/strings.dart';
import 'package:simple_animations/stateless_animation/custom_animation.dart';
import 'package:simple_animations/stateless_animation/loop_animation.dart';
import 'package:simple_animations/stateless_animation/mirror_animation.dart';
import 'package:simple_animations/stateless_animation/play_animation.dart';
import 'package:simple_animations/timeline_tween/timeline_tween.dart';
import 'package:url_launcher/url_launcher.dart';
import 'Homepage.dart';
import 'FadeAnimation.dart';
import 'package:string_extensions/string_extensions.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SplashScreen(),
      ),
    );
enum AniProps { x, y }
enum AniProp { x, y }

class Login extends StatelessWidget {

  TextEditingController _name = new TextEditingController();
  final formKey = GlobalKey<FormState>();
  final scaffoldkey = GlobalKey<ScaffoldState>();

  Login({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String digital_url = "https://facebook.com/MercedesBenzIndia/";

    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
//ensures portrait at all times. you can override this if necessary
    ]);

    final _tween = TimelineTween<AniProps>()
      ..addScene(begin: Duration.zero, duration: const Duration(seconds: 1))
          .animate(AniProps.x, tween: Tween(begin: -10.0, end: 10.0))
      ..addScene(
          begin: const Duration(seconds: 1),
          duration: const Duration(seconds: 1))
          .animate(AniProps.y, tween: Tween(begin: -10.0, end: 10.0))
      ..addScene(
          begin: const Duration(seconds: 2),
          duration: const Duration(seconds: 1))
          .animate(AniProps.x, tween: Tween(begin: 10.0, end: -10.0))
      ..addScene(
          begin: const Duration(seconds: 3),
          duration: const Duration(seconds: 1))
          .animate(AniProps.y, tween: Tween(begin: 10.0, end: -10.0));

    final _tweens = TimelineTween<AniProp>()
      ..addScene(begin: Duration.zero, duration: const Duration(seconds: 0))
          .animate(AniProp.x, tween: Tween(begin: .0, end: .0))
      ..addScene(
          begin: const Duration(seconds: 0),
          duration: const Duration(seconds: 1))
          .animate(AniProp.y, tween: Tween(begin: .0, end: .0))
      ..addScene(
          begin: const Duration(seconds: 0),
          duration: const Duration(seconds: 1))
          .animate(AniProp.x, tween: Tween(begin: 0, end: .0))
      ..addScene(
          begin: const Duration(seconds: 1),
          duration: const Duration(seconds: 1))
          .animate(AniProp.y, tween: Tween(begin: -1.0, end: 50.0));

    return  WillPopScope(child:

      Scaffold(
      key: scaffoldkey,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Container(
            child: Column(children: <Widget>[
              Container(
                height: 250,
                //color: Colors.black45,
                decoration: BoxDecoration(
                    color: Colors.black45,
                    image: DecorationImage(
                        image: AssetImage('assets/race.png'),
                        fit: BoxFit.fill)),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 40,
                      top: 40,
                      width: 80,
                      height: 100,
                      child: LoopAnimation<TimelineValue<AniProps>>(
                          tween: _tween, // Pass in tween
                          duration: _tween.duration, // Obtain duration
                          builder: (context, child, value) {
                            return Transform.translate(
                              // Get animated offset
                                offset: Offset(value.get(AniProps.x),
                                    value.get(AniProps.y)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              'assets/butterfly.png'))),
                                ));
                          }),
                    ),
                    Positioned(
                      right: 40,
                      top: 100,
                      width: 80,
                      height: 100,
                      child: LoopAnimation<TimelineValue<AniProp>>(
                          tween: _tweens, // Pass in tween
                          duration: _tweens.duration, // Obtain duration
                          builder: (context, child, value) {
                            return Transform.translate(
                              // Get animated offset
                                offset: Offset(
                                    value.get(AniProp.x), value.get(AniProp.y)),
                                child: Container(
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage('assets/car.png'))),
                                ));
                          }),
                    ),
                    Positioned(
                      top: 30,
                      left: 15,
                      width: 150,
                      height: 230,
                      child: Container(
                        margin: EdgeInsets.only(top: 50),
                        child: Center(
                          child: Text(
                            "Login\nPage",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 35,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(25.0),
                  child: Column(children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(143, 148, 251, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10))
                          ]),
                      child: Column(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(8.0),
                            decoration: BoxDecoration(
                                border: Border(
                                    bottom: BorderSide(color: Colors.grey))),
                            child: TextFormField(

                              controller: _name,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter the Username";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(
                                    Icons.account_circle,
                                    color: Colors.grey,
                                  ),
                                  hintText: "Phone number",
                                  hintStyle:
                                  TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(8.0),
                            child: TextFormField(
                              obscureText: true,
                              validator: (value) {
                                if (value.isEmpty) {
                                  return "Please enter the Password";
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  icon: Icon(Icons.lock_rounded,
                                      color: Colors.grey),
                                  hintText: "Password",
                                  hintStyle:
                                  TextStyle(color: Colors.grey[400])),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          MirrorAnimation<double>(
                            tween: Tween(begin: -10.0, end: 10.0),
                            // value for offset x-coordinate
                            duration: const Duration(seconds: 2),
                            curve: Curves.easeInOutSine,
                            // non-linear animation
                            builder: (context, child, value) {
                              return Transform.translate(
                                offset: Offset(value, 0),
                                // use animated value for x-coordinate
                                child: child,
                              );
                            },
                            child: Container(

                              height: 50,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(61, 63, 97, 1.0),
                                    Color.fromRGBO(31, 32, 43, 0.6),
                                  ])),
                              child: ButtonTheme(
                                buttonColor: Color.fromRGBO(15, 16, 43, 1.0),
                                minWidth: double.infinity,
                                child: RaisedButton(
                                  onPressed: () {
                                    if (formKey.currentState.validate()) {
                                      scaffoldkey.currentState
                                          .showSnackBar(SnackBar(
                                        content: Text("login Successful"),
                                      ));
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  MyHomePage(
                                                    name: _name.text,
                                                  )));
                                    } else {
                                      scaffoldkey.currentState
                                          .showSnackBar(SnackBar(
                                        content: Text("login Failed"),
                                      ));
                                    }
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          GestureDetector(
                            child: Text(
                              "Forgot Password?",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  color: Color.fromRGBO(32, 33, 54, 1.0)),
                            ),
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                          ),


                        ],
                      ),
                    ),
                    SizedBox(height: 180),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[

                        GestureDetector(

                          child: Image.asset(
                            "assets/fb.png",
                            height: 50.0,
                          ),

                          onTap: () async {
                            var fbUrl =
                                "fb://facewebmodal/f?href=" + digital_url;
                            launchFacebook(fbUrl, digital_url);
                          },

                        ),


                        SizedBox(
                          width: 20.0,
                        ),
                        Image.asset(
                          "assets/insta.png",
                          height: 50.0,
                        ),

                      ],
                    ),


                  ]

                  ))
            ]),
          ),
        ),
      ),
    )  ,onWillPop: () => showDialog<bool>(
      context: context,
      builder: (c) => AlertDialog(
        title: Text('Warning'),
        content: Text('Do you really want to exit'),
        actions: [
          FlatButton(
            child: Text('Yes'),
            onPressed: () => Navigator.pop(c, true),
          ),
          FlatButton(
            child: Text('No'),
            onPressed: () => Navigator.pop(c, false),
          ),
        ],
      ),
    ));
  }

  Future<void> launchFacebook(String fbUrl, String fbWebUrl) async {
    try {
      bool launched = await launch(fbUrl, forceSafariVC: false);
      print("Launched Native app $launched");

      if (!launched) {
        await launch(fbWebUrl, forceSafariVC: false);
        print("Launched browser $launched");
      }
    } catch (e) {
      await launch(fbWebUrl, forceSafariVC: false);
      print("Inside catch");
    }
  }
}