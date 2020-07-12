import 'dart:ui';
import 'package:flowershop/widgets/appBarSearch.dart';
import 'package:flowershop/widgets/bottomNavigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home-screen';
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height * 20;
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        elevation: 0,
        bottom: appBarSearch(context),
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
                    SizedBox(
                      height: 10,
                    ),
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
                      height: MediaQuery.of(context).size.height * 0.23,
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
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          collectionList('assets/images/Shop1.jpg',
                              'Flower Lovers', height),
                          collectionList('assets/images/Shop2.jpg',
                              'Birthday Gift', height),
                          collectionList('assets/images/Shop3.jpg',
                              'Valantine"s Gift', height),
                          collectionList('assets/images/Shop1.jpg',
                              'Flower Lovers', height),
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
                      height: MediaQuery.of(context).size.height * 0.20,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          collectionList('assets/images/Shop1.jpg',
                              'Flower Lovers', height),
                          collectionList('assets/images/Shop2.jpg',
                              'Birthday Gift', height),
                          collectionList('assets/images/Shop3.jpg',
                              'Valantine"s Gift', height),
                          collectionList('assets/images/Shop1.jpg',
                              'Flower Lovers', height),
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
      bottomNavigationBar: BottomNavigation(
        currentIndex: 0,
      ),
    );
  }

  Container collectionList(String url, String name, double height) {
    return Container(
      width: 130,
      child: Card(
        elevation: 5,
        child: Stack(
          children: <Widget>[
            Image.asset(
              url,
              fit: BoxFit.cover,
              height: height,
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
