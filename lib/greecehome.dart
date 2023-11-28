import 'package:flutter/material.dart';
import 'greece.dart';
class Greecehome extends StatefulWidget {
  const Greecehome({super.key});

  @override
  State<Greecehome> createState() => _HomeState();
}

class _HomeState extends State<Greecehome> {
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
          backgroundColor: Color.fromRGBO(0, 123, 255, 1.0),
          title: Text('Greece'),
          centerTitle: true,
        ),
        body:
        SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                Text('Greece, the birthplace of civilization, invites you to immerse yourself in its mythical past and breathtaking '
                    'natural wonders. From the iconic Acropolis of Athens to the idyllic islands of Santorini and Mykonos, '
                    'Greece enchants with its rich history, sun-kissed beaches, and warm Mediterranean hospitality, '
                    'offering a truly unforgettable journey through ancient ruins, crystal-clear waters, and vibrant coastal towns.',
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