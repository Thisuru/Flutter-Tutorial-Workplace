import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Container(
                    height: 200.0,
                    width: double.infinity,
                    color: Colors.purpleAccent,
                  ),
                  Positioned(
                    bottom: 55.0,
                    right: 100.0,
                    child: Container(
                      height: 350.0,
                      width: 350.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(320),
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100,
                    left: 130,
                    child: Container(
                      height: 290.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.yellowAccent,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 150,
                    left: 160,
                    child: Container(
                      height: 250.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(300),
                        color: Colors.greenAccent,
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(height: 14.0),
                      Row(
                        children: <Widget>[
                          SizedBox(width: 14.0),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 45.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              border: Border.all(
                                color: Colors.white,
                                style: BorderStyle.solid,
                                width: 2.0
                              ),
                              image: DecorationImage(
                                image: AssetImage('images/profilePic.jpeg'),
                              )
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width-120),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                                icon: Icon(Icons.menu),
                                onPressed: (){},
                                color: Colors.white,
                                iconSize: 35.0,
                            ),
                          ),
                          SizedBox(height: 15.0),
                        ],
                      ),
                      SizedBox(height: 45.0,),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0),
                        child: Text(
                          'Hi Welcome',
                          style: TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
//
                    ],
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}