import 'package:flutter/material.dart';
import 'package:mobilep/price.dart';
import 'country.dart';
import 'hotel.dart';
class Italy extends StatefulWidget {
  const Italy({super.key});

  @override
  State<Italy> createState() => _ItalyState();
}

class _ItalyState extends State<Italy> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
      ),
    );
  }
}
List<int> nights=[
  5,6,7
];
List<Hotel> italyHotels=[
  Hotel("Ca Di Dio", "https://cf.bstatic.com/xdata/images/hotel/max1280x900/115391133.jpg?k=7bdb0e753bd344345bb74aa0e0f92f4d5b47bd0a232472c3ec224894c433083d&o=&hp=1", 350),
  Hotel("H10 Palazza Galla", "https://www.jet2holidays.com/HotelImages/Web/FCO_83888_H10_Palazzo_Galla_1122_16.jpg", 270),
  Hotel("Yello Kuta Beachwalk", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/290178880.jpg?k=c44e233e86639451c0328a4db7dfc8db7b059f62b9de7d8cb95f25017f52611e&o=&hp=1", 200)
];
class MyDropdownMenuWidget extends StatefulWidget {
  const MyDropdownMenuWidget({required this.updateNight, super.key});
  final Function(int) updateNight;


  @override
  State<MyDropdownMenuWidget> createState() => _MyDropdownMenuWidgetState();
}

class _MyDropdownMenuWidgetState extends State<MyDropdownMenuWidget> {
  int selectedNight=0;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
        width: 210.0,
        initialSelection: nights[0], // first car to be displayed
        onSelected: (night) {
          setState(() {
            widget.updateNight(night as int);
            // use widget to access widget fields from state class
            selectedNight=night;
          });
        },

        // the list map function converts the list of cars to a list of DropdownMenuEntries
        dropdownMenuEntries: nights.map<DropdownMenuEntry<int>>((int night) {
          return DropdownMenuEntry(value: night, label: night.toString());
        }).toList());


  }
}
class Hotels extends StatefulWidget {
  const Hotels({super.key});

  @override
  State<Hotels> createState() => _HotelsState();
}

class _HotelsState extends State<Hotels> {
  int _stars=5;
  int get stars => _stars;
  bool three=true;
  bool four=false;
  bool five=false;

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(height: 50,),
        const Text('Choose Hotel:', style: TextStyle(fontSize: 18),),
        const SizedBox(height: 20,),

        Column(
          children:[
            ElevatedButton(onPressed:(){
              countries[1].setPrice();
              countries[1].updatePrice(italyHotels[0].hotelPrice);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Price(index: 1)
                ),

              );
            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color here
                ),
                child: Text(italyHotels[0].hotel1, style: TextStyle(fontSize: 18))),
            Image.network(italyHotels[0].image1, height: 300, width:400)
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          children:[
            ElevatedButton(onPressed:(){
              countries[1].setPrice();
              countries[1].updatePrice(italyHotels[1].hotelPrice);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Price(index: 1)
                ),

              );
            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color here
                ),
                child: Text(italyHotels[1].hotel1, style: TextStyle(fontSize: 18))),
            const SizedBox(height: 20,),
            Image.network(italyHotels[1].image1, height: 300, width:400)
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          children:[
            ElevatedButton(onPressed:(){
              countries[1].setPrice();
              countries[1].updatePrice(italyHotels[2].hotelPrice);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Price(index: 1)
                ),

              );
            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color here
                ),
                child: Text(italyHotels[2].hotel1, style: TextStyle(fontSize: 18))),
            Image.network(italyHotels[2].image1, height: 300, width:400)
          ],
        ),



      ],);


  }
}