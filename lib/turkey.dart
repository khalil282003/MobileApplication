import 'package:flutter/material.dart';
import 'package:mobilep/price.dart';
import 'country.dart';
import 'hotel.dart';
class Turkey extends StatefulWidget {
  const Turkey({super.key});

  @override
  State<Turkey> createState() => _TurkeyState();
}

class _TurkeyState extends State<Turkey> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(186, 12, 47, 1.0),
        title: Text('Turkey'),
        centerTitle: true,

      ),
    );
  }
}
List<int> nights=[
  5,6,7
];
List<Hotel> turkeyHotels=[
  Hotel("Bayou Villas", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/415293370.jpg?k=e5f8b34e0441ed95224269f01f2f93bdb10f56525a002042d1aed55237563056&o=&hp=1", 200),
  Hotel("The Marmara Pera", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/46528004.jpg?k=787d27c17a1437dc6562c4012a23c1501737544703b3c959121b240c346f7070&o=&hp=1", 150),
  Hotel("Kaya Royal Hotel", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/429470430.jpg?k=2c6245b5462649eae7ce7583a465ccfe0eb693c81afd1a7ce9c360b077f39833&o=&hp=1", 100)
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
                    countries[0].setPrice();
                    countries[0].updatePrice(turkeyHotels[0].hotelPrice);

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Price(index: 0)
                      ),

                    );
                  },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent, // Set the background color here
                      ),
                      child: Text(turkeyHotels[0].hotel1, style: TextStyle(fontSize: 18))),
                Image.network(turkeyHotels[0].image1, height: 300, width:400)
                ],
              ),
          const SizedBox(height: 20,),
          Column(
            children:[
              ElevatedButton(onPressed:(){
                countries[0].setPrice();
                countries[0].updatePrice(turkeyHotels[1].hotelPrice);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Price(index: 0)
                  ),

                );
              },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Set the background color here
                  ),
                  child: Text(turkeyHotels[1].hotel1, style: TextStyle(fontSize: 18))),
              const SizedBox(height: 20,),
              Image.network(turkeyHotels[1].image1, height: 300, width:400)
            ],
          ),
          const SizedBox(height: 20,),
          Column(
            children:[
              ElevatedButton(onPressed:(){
                countries[0].setPrice();
                countries[0].updatePrice(turkeyHotels[2].hotelPrice);

                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Price(index: 0)
                  ),

                );
              },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.transparent, // Set the background color here
                  ),
                  child: Text(turkeyHotels[2].hotel1, style: TextStyle(fontSize: 18))),
              Image.network(turkeyHotels[2].image1, height: 300, width:400)
            ],
          ),



],);


    }
}