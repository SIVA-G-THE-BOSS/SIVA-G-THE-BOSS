import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Model extends StatefulWidget {
  const Model({Key? key}) : super(key: key);





  @override
  _ModelState createState() => _ModelState();
}

class _ModelState extends State<Model> {

 @override
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
        body: Center(
          child: CircleImages(),
        ));
  }
}

class CircleImages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CircleWidgets();
  }
}

class CircleWidgets extends State<CircleImages> {
  Container Logos(String imageval,String heading,String subheading) {
    return Container(

height: 100,
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
  @override
  Widget build(BuildContext context) {

    // List<Widget> widgets = [];
    // for (var x = 0; x < 10; x++) {
    //   widgets.add(
    //     Container(
    //       height: 60.0,
    //       width: 60.0,
    //       margin: EdgeInsets.all(6),
    //       decoration: BoxDecoration(
    //         boxShadow: [
    //           BoxShadow(
    //               color: Color.fromARGB(100, 0, 0, 0),
    //               blurRadius: 5.0,
    //               offset: Offset(5.0, 5.0))
    //         ],
    //         border: Border.all(
    //             width: 2.0,
    //             style: BorderStyle.solid,
    //             color: Color.fromARGB(
    //               255,
    //               0,
    //               0,
    //               0,
    //             )),
    //         borderRadius: BorderRadius.circular(100),
    //         image: DecorationImage(
    //           fit: BoxFit.cover,
    //           image: AssetImage("assets/benz.png"),
    //
    //         ),
    //
    //       ),
    //     ),
    //   );

    return Container(
    margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Logos('assets/benz.png',"Benz","Class"),
          Logos('assets/gtr.png',"gtr","Class"),
          Logos('assets/bmw.png',"BMW","Class"),

        ],

      ),
    );
  }
}
