import 'package:flutter/material.dart';
import 'package:mobilep/price.dart';
import 'country.dart';
import 'hotel.dart';
class Bali extends StatefulWidget {
  const Bali({super.key});

  @override
  State<Bali> createState() => _BaliState();
}

class _BaliState extends State<Bali> {

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
List<Hotel> baliHotels=[
  Hotel("Potato Head Suites & Studios", "https://cf.bstatic.com/xdata/images/hotel/max1280x900/244284475.jpg?k=c21fc02fb8b76cfced967a84801a54f42e8bb2eef5e83a56bbc21128ae98558d&o=&hp=1", 520),
  Hotel("Ulun Ubud Resort", "https://cf.bstatic.com/xdata/images/hotel/max1280x900/174338313.jpg?k=dba53acf31dac2c3e74f770d8c94c7f5898eb8779391e8243903f53e7133cde9&o=&hp=1", 400),
  Hotel("Yello Kuta Beachwalk", "https://cf.bstatic.com/xdata/images/hotel/max1024x768/290178880.jpg?k=c44e233e86639451c0328a4db7dfc8db7b059f62b9de7d8cb95f25017f52611e&o=&hp=1", 300)
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
              countries[2].setPrice();
              countries[2].updatePrice(baliHotels[0].hotelPrice);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Price(index: 2)
                ),

              );
            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color here
                ),
                child: Text(baliHotels[0].hotel1, style: TextStyle(fontSize: 18))),
            Image.network(baliHotels[0].image1, height: 300, width:400)
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          children:[
            ElevatedButton(onPressed:(){
              countries[2].setPrice();
              countries[2].updatePrice(baliHotels[1].hotelPrice);
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Price(index: 2)
                ),

              );
            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color here
                ),
                child: Text(baliHotels[1].hotel1, style: TextStyle(fontSize: 18))),
            const SizedBox(height: 20,),
            Image.network(baliHotels[1].image1, height: 300, width:400)
          ],
        ),
        const SizedBox(height: 20,),
        Column(
          children:[
            ElevatedButton(onPressed:(){
              countries[2].setPrice();
              countries[2].updatePrice(baliHotels[2].hotelPrice);

              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const Price(index: 2)
                ),

              );
            },
                style: ElevatedButton.styleFrom(
                  primary: Colors.transparent, // Set the background color here
                ),
                child: Text(baliHotels[2].hotel1, style: TextStyle(fontSize: 18))),
            Image.network(baliHotels[2].image1, height: 300, width:400)
          ],
        ),



      ],);


  }
}