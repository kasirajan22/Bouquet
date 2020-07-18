import 'package:flowershop/widgets/appBarSearch.dart';
import 'package:flowershop/widgets/appDrawer.dart';
import 'package:flowershop/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = 'settings-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
        elevation: 0,
        bottom: appBarSearch(context),
      ),
      bottomNavigationBar: BottomNavigation(
        currentIndex: 3,
      ),
      drawer: AppDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            ListTile(
              leading: Text(
                'General',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Personal Settings'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.mail),
              title: Text('My Email'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.lock_outline),
              title: Text('Reset Password'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.attach_money),
              title: Text('Billing Settings'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notification'),
            ),
            Divider(),
            ListTile(
              leading: Text(
                'Support',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            ),
            ListTile(
              leading: Icon(Icons.sms_failed),
              title: Text('Terms & Policies'),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Log Out'),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
