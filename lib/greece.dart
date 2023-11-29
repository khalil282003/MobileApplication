import 'package:flutter/material.dart';
import 'package:mobilep/price.dart';
import 'country.dart';
import 'hotel.dart';
class Greece extends StatefulWidget {
  const Greece({super.key});

  @override
  State<Greece> createState() => _GreeceState();
}

class _GreeceState extends State<Greece> {

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
List<Hotel> greeceHotels=[
  Hotel("Elessa Hotel", "https://cf.bstatic.com/xdata/images/hotel/max1280x900/472147242.jpg?k=7403e9bfc53b525b5116a44f0f2fb3e2a70937b38fb62756b1f944f112115d08&o=&hp=1", 450),
  Hotel("The Stanley", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/300750797.jpg?k=8812df6a80e5ab9c20726333c0c2acd33421a39d7f2edbcdd6282e72d726afe1&o=&hp=1", 350),
  Hotel("Balasca Hotel", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/36692766.jpg?k=80358d3e0ade137ce860b7d076fc8fdbef042c4a4c7bdd6eea4f2810272d78d1&o=&hp=1", 250)
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
              countries[3].setPrice();
              countries[3].updatePrice(greeceHotels[0].hotelPrice);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Price(index: 3)
                ),

              );
            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color here
                ),
                child: Text(greeceHotels[0].hotel1, style: TextStyle(fontSize: 18))),
            Image.network(greeceHotels[0].image1, height: 300, width:400)
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          children:[
            ElevatedButton(onPressed:(){
              countries[3].setPrice();
              countries[3].updatePrice(greeceHotels[1].hotelPrice);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Price(index: 3)
                ),

              );
            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color here
                ),
                child: Text(greeceHotels[1].hotel1, style: TextStyle(fontSize: 18))),
            const SizedBox(height: 20,),
            Image.network(greeceHotels[1].image1, height: 300, width:400)
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          children:[
            ElevatedButton(onPressed:(){
              countries[3].setPrice();
              countries[3].updatePrice(greeceHotels[2].hotelPrice);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Price(index: 3)
                ),

              );
            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color here
                ),
                child: Text(greeceHotels[2].hotel1, style: TextStyle(fontSize: 18))),
            Image.network(greeceHotels[2].image1, height: 300, width:400)
          ],
        ),



      ],);


  }
}


