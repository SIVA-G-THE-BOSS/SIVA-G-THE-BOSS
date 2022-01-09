import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Logo extends StatelessWidget {


  Container CircleImages(String imageval,String heading,String subheading){
    return Container(


      width: 160,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(imageval),
            ListTile(
              title: Text(heading),
              subtitle: Text(subheading),
            )

          ],


        ),

      ),
    );


  }



  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
            backgroundColor: Colors.black45,
            actions: [],
            title: Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 3.0),
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      'assets/mclaren.png',
                      width: 140,
                    ),
                  ]),
            )),
      ),
      body: Container(
        margin: EdgeInsets.symmetric(vertical: 20.0),
        height: 300,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            CircleImages('assets/benz.png',"Benz","Class"),
            CircleImages('assets/gtr.png',"gtr","Class"),
            CircleImages('assets/bmw.png',"BMW","Class"),

          ],

        ),
      ),

    );
  }
}

