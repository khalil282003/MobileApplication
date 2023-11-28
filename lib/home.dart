import 'package:flutter/material.dart';
import 'show_countries.dart';
import 'turkeyhome.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).orientation == Orientation.landscape){
      screenWidth = screenWidth * 0.8;
    }
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(70),
          child: AppBar(
            title:const Text('Wanderlust Wonders , \n .. Fly you to the moon, and beyond ✈..'),
            backgroundColor: Colors.black,
          ),
        ),
        body: ShowCountries(width: screenWidth)
        );
  }
}