import 'package:carousel_pro/carousel_pro.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flowershop/provider/pSearch.dart';
import 'package:flowershop/screens/home2.dart';
import 'package:flowershop/screens/home_screen.dart';
import 'package:flowershop/screens/login_screen.dart';
import 'package:flowershop/screens/search_screen.dart';
import 'package:flowershop/widgets/intro.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PSearch(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: MaterialColor(4294316089, {
            50: Color(0xfffee6eb),
            100: Color(0xfffdced6),
            200: Color(0xfffb9dae),
            300: Color(0xfff96c85),
            400: Color(0xfff83a5c),
            500: Color(0xfff60933),
            600: Color(0xffc50729),
            700: Color(0xff93061f),
            800: Color(0xff620415),
            900: Color(0xff31020a)
          }),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomeScreen(), //MyHomePage(title: 'Flutter Demo Home Page'),
      ),
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
