import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          CircleAvatar(
            backgroundImage: AssetImage('assets/images/Shop/1.jpg'),
            radius: 70,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            'Kasi Rajan',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
          Divider(),
          ListTile(
            leading: Text(''),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: Text(''),
            title: Text(
              'Mothers Day',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: Text(''),
            title: Text(
              'Valentine Gift',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: Text(''),
            title: Text(
              'Flowers',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          ListTile(
            leading: Text(''),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
