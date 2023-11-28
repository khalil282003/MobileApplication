import 'package:flutter/material.dart';
import 'italy.dart';

class Italyhome extends StatefulWidget {
  const Italyhome({super.key});

  @override
  State<Italyhome> createState() => _HomeState();
}

class _HomeState extends State<Italyhome  > {
  int stars=5;
  int night=nights.first;
  int n=0;
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
          backgroundColor: Color.fromRGBO(0, 146, 70, 1.0),
          title: Text('Italy'),
          centerTitle: true,
        ),
        body:
        SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 20.0),
                Text('Italy, a country steeped in history and art, beckons with its iconic landmarks, delectable cuisine,'
                    ' and picturesque landscapes. From the ancient ruins of Rome to the romantic canals of Venice, '
                    'Italy offers a truly unforgettable and immersive travel experience.',
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