import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flowershop/screens/home2.dart';
import 'package:flowershop/screens/home_screen.dart';
import 'package:flowershop/screens/login_screen.dart';
import 'package:flowershop/widgets/intro.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({Key key, this.title}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _image = [
    Image.asset("assets/images/Shop3.jpg"),
    Image.asset("assets/images/Shop2.jpg"),
    Image.asset("assets/images/Shop1.jpg")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
      //body: Intro(image: _image),
    );
  }
}
