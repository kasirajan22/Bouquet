import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 180,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160.0,
              //color: Colors.red,
              child: Card(
                elevation: 5,
                child: Column(
                  children: <Widget>[
                    Image.asset(
                      'assets/images/Shop1.jpg',
                      fit: BoxFit.cover,
                    ),
                    ListTile(
                      leading: Text("test"),
                      title: Text("fdfg"),
                      //trailing: Text('ergkjbe oernf oerenrognerogern'),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: 160.0,
              color: Colors.blue,
            ),
            Container(
              width: 160.0,
              color: Colors.green,
            ),
            Container(
              width: 160.0,
              color: Colors.yellow,
            ),
            Container(
              width: 160.0,
              color: Colors.orange,
            )
          ],
        ),
      ),
    );
  }
}
