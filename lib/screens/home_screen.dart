import 'dart:ui';

import 'package:flowershop/screens/search_screen.dart';
import 'package:flowershop/widgets/TopSearch.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  void onSerch(String text) {
    print(text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(45.0),
          child: Theme(
            data: Theme.of(context).copyWith(accentColor: Colors.white),
            child: Container(
                margin: const EdgeInsets.only(bottom: 10),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 0),
                height: 45.0,
                alignment: Alignment.center,
                child: TopSearch("home", onSerch)),
          ),
        ),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Featured',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 150,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: ExactAssetImage('assets/images/Shop1.jpg'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: new BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 600.0,
                          sigmaY: 1000.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Text(
                      'Browse by collection',
                      textAlign: TextAlign.start,
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          collectionList(
                              'assets/images/Shop1.jpg', 'Flower Lovers'),
                          collectionList(
                              'assets/images/Shop2.jpg', 'Birthday Gift'),
                          collectionList(
                              'assets/images/Shop3.jpg', 'Valantine"s Gift'),
                          collectionList(
                              'assets/images/Shop1.jpg', 'Flower Lovers'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Text(
                          'Best Sellers',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      height: 160,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          collectionList(
                              'assets/images/Shop1.jpg', 'Flower Lovers'),
                          collectionList(
                              'assets/images/Shop2.jpg', 'Birthday Gift'),
                          collectionList(
                              'assets/images/Shop3.jpg', 'Valantine"s Gift'),
                          collectionList(
                              'assets/images/Shop1.jpg', 'Flower Lovers'),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              //color: Colors.black,
            ),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            title: Text('Business'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.card_giftcard,
              color: Colors.black,
            ),
            title: Text('gift'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat,
              color: Colors.black,
            ),
            title: Text('chat'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            title: Text('account'),
          ),
        ],
        currentIndex: 0,
        selectedItemColor: Colors.red,
        onTap: (v) {},
      ),
    );
  }

  Container collectionList(String url, String name) {
    return Container(
      width: 130,
      child: Card(
        elevation: 5,
        child: Stack(
          children: <Widget>[
            Image.asset(
              url,
              fit: BoxFit.fill,
              height: 160,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.white,
                padding: const EdgeInsets.all(8.0),
                width: 160,
                child: Text(
                  name,
                  textAlign: TextAlign.center,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
