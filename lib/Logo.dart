import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatefulWidget {


  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  Container Logos(String imageval){
    return Container(


      height:80,
        width: 80,
        margin: EdgeInsets.all(6),
    decoration: BoxDecoration(
    boxShadow: [
    BoxShadow(
    color: Color.fromARGB(100, 255, 252, 252),
    blurRadius: 5.0,
    offset: Offset(5.0, 5.0))
    ],
    border: Border.all(
    width: 2.0,
    style: BorderStyle.solid,
   ),
    borderRadius: BorderRadius.circular(150),),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          children: <Widget>[
            Image.asset(imageval),


          ],


        ),
      ),
    );


  }

  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Logos('assets/velar.png',),

          Logos('assets/mc.png',),
          Logos('assets/lambo.png'),
          Logos('assets/mitsubishi.png',),

          Logos('assets/ford.png'),
          Logos('assets/hyundai.png',),
          Logos('assets/honda.png',),
          Logos('assets/mahindra.png'),
          Logos('assets/fiat.png'),
          Logos('assets/ferrari.png',),
          Logos('assets/benz.png',),
          Logos('assets/gtr.png',),
          Logos('assets/bmw.png'),

        ],

      ),

    );
  }
}

