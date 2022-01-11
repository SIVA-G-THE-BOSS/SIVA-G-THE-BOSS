import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:shield/Logo.dart';
import 'package:shield/Models.dart';
import 'package:shield/Scanner.dart';

class MyHomePage extends StatefulWidget {
  final String name;

  MyHomePage({required this.name});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25.0),
                      child: Container(
                        height: 25,
                        width: 25,
                        // height: MediaQuery.of(context).size.height /8,
                        // width: MediaQuery.of(context).size.width / 8,
                        child: Carousel(
                          images: [
                            AssetImage("assets/benz.png"),
                            AssetImage("assets/lambo.png"),
                            AssetImage("assets/gtr.png"),
                          ],
                          showIndicator: false,
                          borderRadius: false,
                          moveIndicatorFromBottom: 180.0,
                          noRadiusForIndicator: true,
                          overlayShadow: true,
                          // overlayShadowColors: Color(0xff0D6EFD),
                          overlayShadowSize: 0.7,
                          radius: Radius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(2, 15, 2, 2),
                    child: Text(
                      "" + widget.name,
                      style: TextStyle(fontSize: 35, color: Colors.black),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(5),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 15.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(0))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                      flex: 2,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search for Models,Brands..',
                          hintStyle: TextStyle(color: Colors.black),
                          icon: Icon(Icons.search, color: Colors.black),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        drawer: DrawerScreen(),
        body: SingleChildScrollView(
          child: Stack(children: [
            Column(
              children: [
                Container(

                //  color: Colors.lightGreen,
                  child: Column(
                    children: [
                      Container(
                        height: 300,
                        child: Carousel(
                          boxFit: BoxFit.cover,
                          images: [
                            Card(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                        leading: ImageIcon(
                                          AssetImage("assets/lambo.png"),
                                          color: Colors.lightGreenAccent,
                                        ),
                                        title: Text(
                                          'Lamborghini',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        subtitle: Text("Expect the Unexpected")),
                                    Image.asset(
                                      'assets/lambo.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                  ]),
                            ),
                            Card(
                              child: Column(mainAxisSize: MainAxisSize.min, children: <
                                  Widget>[
                                const ListTile(
                                    leading: ImageIcon(AssetImage("assets/benz.png")),
                                    title: Text(
                                      'Mercedes Benz',
                                      style:
                                          TextStyle(color: Colors.black, fontSize: 20),
                                    ),
                                    subtitle: Text("The Best or Nothing")),
                                Image.asset(
                                  'assets/benz.png',
                                  height: 200,
                                  width: 200,
                                ),
                              ]),
                            ),
                            Card(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                        leading: ImageIcon(
                                          AssetImage("assets/ford.png"),
                                          color: Colors.blueAccent,
                                        ),
                                        title: Text(
                                          'Ford',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        subtitle:
                                            Text(" Don't find fault, find a remedy.")),
                                    Image.asset(
                                      'assets/ford.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                  ]),
                            ),
                            Card(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                        leading: ImageIcon(
                                          AssetImage(
                                            'assets/gtr.png',
                                          ),
                                          color: Colors.red,
                                        ),
                                        title: Text(
                                          'Nissan',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        subtitle: Text("Godzilla")),
                                    Image.asset(
                                      'assets/gtr.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                  ]),
                            ),
                            Card(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                        leading: ImageIcon(
                                          AssetImage("assets/bmw.png"),
                                          color: Colors.greenAccent,
                                        ),
                                        title: Text(
                                          'Bayerische Motoren Werke AG',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        subtitle: Text("Sheer Driving Pleasure")),
                                    Image.asset(
                                      'assets/bmw.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                  ]),
                            ),
                            Card(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                        leading:
                                            ImageIcon(AssetImage("assets/audi.png")),
                                        title: Text(
                                          'Audi',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        subtitle: Text(
                                            "Challenges are the only way to test yourself in life")),
                                    Image.asset(
                                      'assets/audi.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                  ]),
                            ),
                            Card(
                              child: Column(mainAxisSize: MainAxisSize.min, children: <
                                  Widget>[
                                const ListTile(
                                    leading:
                                        ImageIcon(AssetImage("assets/rollslogo.png")),
                                    title: Text(
                                      'Rolls Royce',
                                      style:
                                          TextStyle(color: Colors.black, fontSize: 20),
                                    ),
                                    subtitle: Text(
                                        "Strive for perfection in everything you do. Take the best that exists and make it better. When it does not exist, design it")),
                                Image.asset(
                                  'assets/rollslogo.png',
                                  height: 200,
                                  width: 200,
                                ),
                              ]),
                            ),
                            Card(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                        leading: ImageIcon(
                                          AssetImage("assets/ferrari.png"),
                                          color: Colors.yellow,
                                        ),
                                        title: Text(
                                          'Ferrari',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        subtitle: Text(
                                            "You have to have courage to stand up to your critics")),
                                    Image.asset(
                                      'assets/ferrari.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                  ]),
                            ),
                            Card(
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    const ListTile(
                                        leading:
                                            ImageIcon(AssetImage("assets/velar.png")),
                                        title: Text(
                                          'Range Rover',
                                          style: TextStyle(
                                              color: Colors.black, fontSize: 20),
                                        ),
                                        subtitle: Text(
                                            "Above and Beyond. The Go anywhere vehicle. The Power to take you anywhere.")),
                                    Image.asset(
                                      'assets/velar.png',
                                      height: 200,
                                      width: 200,
                                    ),
                                  ]),
                            ),



                          ],
                        ),
                      ),
                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Top Models",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        ],
                      ),

                      Container(
                        height:300,
                      child:
                      CircleImages(),),
                      Row(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Variants",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                        ],
                      ),
                      Container(
                          height: 90,
                          child: Logo()),

                    ],
                  ),
                ),


              ],
            ),
          ]),
        ),
      ),
    );
  }
}

class DrawerScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    String digital_url = "https://facebook.com/AliForDigitalIsrael/";
    return Drawer(
      child: ListView(children: <Widget>[
        UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.black45,
            ),
            accountName: Row(
              children: [
                ImageIcon(AssetImage("assets/mc.png")),
                Text(
                  'Shield',
                  style: TextStyle(fontSize: 25.0),
                )
              ],
            ),
            accountEmail:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text('welcome to Shield !'),
              Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.lock_rounded,
                    size: 20,
                  )),
            ])),
        ExpansionTile(
          leading: ImageIcon(AssetImage("assets/mc.png")),
          title: Text(
            "Details",
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w500),
          ),
          children: <Widget>[
            ListTile(
              title: Text(
                "Price",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            ListTile(
              title: Text(
                "Specification",
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            )
          ],
        ),
        ListTile(
          leading: Icon(
            Icons.hvac,
            color: Colors.black,
          ),
          title: Text("Scanner"),
          onTap: () =>selectedItem(context, 0)

        ),
        SizedBox(height: 1),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.add_road,
            color: Colors.black,
          ),
          title: Text("Models"),
          onTap: ()=>selectedItem(context, 1)
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.location_city,
            color: Colors.black,
          ),
          title: Text("Logo"),
          onTap: () =>selectedItem(context, 2)
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.apartment,
            color: Colors.black,
          ),
          title: Text("Industrial Scanner"),
          onTap: () => selectedItem(context, 0),
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.kitchen,
            color: Colors.black,
          ),
          title: Text("Water Dispenser"),
          onTap: () {},
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.emoji_objects,
            color: Colors.black,
          ),
          title: Text("Other Products"),
          onTap: () {},
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: Colors.black,
          ),
          title: Text("Service Requests"),
          onTap: () {},
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.pending_actions,
            color: Colors.black,
          ),
          title: Text("Enquiry List"),
          onTap: () {},
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.picture_as_pdf_rounded,
            color: Colors.black,
          ),
          title: Text("E-Catalogue"),
          onTap: () {},
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.help,
            color: Colors.black,
          ),
          title: Text("Help"),
          onTap: () {},
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.receipt,
            color: Colors.black,
          ),
          title: Text("Privacy policy"),
          onTap: () {},
        ),
        Divider(
          height: 0.0,
        ),
        ListTile(
          leading: Icon(
            Icons.input,
            color: Colors.black,
          ),
          title: Text("Login"),
          onTap: () {
            Navigator.pop(context);
          },
        ),
      ]),
    );
  }

  void selectedItem(BuildContext context, int index) {
    Navigator.pop(context);
    switch (index) {
      case 0:
        Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ScanQRPage()));
        break;
      case 1:

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Model()));
        break;
      case 2:

          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Logo()));
        break;

    }

  }


}
