import 'package:flutter/material.dart';
import 'turkey.dart';
import 'country.dart';
class Turkeyhome extends StatefulWidget {
  const Turkeyhome({super.key});

  @override
  State<Turkeyhome> createState() => _HomeState();
}

class _HomeState extends State<Turkeyhome> {
  int stars=5;
  int night=nights.first;

  //Function(int) updatePrice;
  void updateNight(int night){
    setState(() {
      this.night=night;
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
          backgroundColor: Color.fromRGBO(186, 12, 47, 1.0),
          title: Text('Turkey'),
          centerTitle: true,
        ),
        body:
        SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              const SizedBox(height: 20.0),
              Text('Turkey, a captivating country where East meets West,'
                  ' offers a mesmerizing blend of ancient history, vibrant culture,'
                  ' and breathtaking landscapes, beckoning travelers with its iconic landmarks'
                  ' like the Hagia Sophia and Cappadocia\'s surreal landscapes. '
                  'From the bustling bazaars of Istanbul to the stunning beaches'
                  ' of Antalya, Turkey promises an unforgettable journey '
                  'filled with rich experiences and warm hospitality.', style: const TextStyle(fontSize: 18.0)),
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
                  Hotels(),
                ],
              ),
            ],

          ),
        ),

        );
    }
}