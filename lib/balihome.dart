import 'package:flutter/material.dart';
import 'bali.dart';
class Balihome extends StatefulWidget {
  const Balihome({super.key});

  @override
  State<Balihome> createState() => _HomeState();
}

class _HomeState extends State<Balihome> {
  int stars=5;
  int night=nights.first;
  void updateNight(int night){
    setState(() {
      this.night=night;
    });
  }
  void updateHotel(int s){
    setState(() {
      stars=s;
    });
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    if (MediaQuery.of(context).orientation == Orientation.landscape) {
      screenWidth = screenWidth * 0.8;
    }
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orangeAccent,
          title: Text('Bali'),
          centerTitle: true,
        ),
        body:
        SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                Text('Bali, known as the "Island of the Gods," offers an enchanting escape with its pristine beaches, lush landscapes, '
                    'and vibrant cultural heritage. From exploring ancient temples and traditional markets to indulging in world-class surfing '
                    'and rejuvenating spa retreats,Bali beckons travelers with its idyllic beauty and warm hospitality, '
                    'promising an unforgettable tropical getaway.',
                    style: const TextStyle(fontSize: 18.0)),
                const SizedBox(height: 40.0,),
                //MyDropdownMenuWidget(updateNight: updateNight),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Nights to stay:', style: const TextStyle(fontSize: 18.0)),
                    MyDropdownMenuWidget(updateNight: updateNight),
                    SizedBox(height: 60),
                  ],
                ),
                Column(
                  children: [
                    Hotel(updateHotel: updateHotel),
                  ],
                ),
              ],
            ),
        ),
        );
    }
}