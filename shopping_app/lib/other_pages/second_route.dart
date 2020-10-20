import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget {
  final caption = 'My Drawer';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(caption),
      ),
      body: Center(
        child: Text('My Page'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Welcome'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Home'),
              leading: Icon(Icons.home, color: Colors.pink),
              onTap: (){
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Profile'),
              leading: Icon(Icons.person, color: Colors.redAccent),
              onTap: (){
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

