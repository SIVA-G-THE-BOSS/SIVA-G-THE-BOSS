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
    return  Scaffold(
        appBar: PreferredSize(preferredSize: Size.fromHeight(120), child: AppBar(
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

        )

      ),



    ));
  }
}
