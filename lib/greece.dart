import 'package:flutter/material.dart';
import 'country.dart';
import 'price.dart';
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

class MyDropdownMenuWidget extends StatefulWidget {
  const MyDropdownMenuWidget({required this.updateNight, super.key});
  final Function(int) updateNight;

  @override
  State<MyDropdownMenuWidget> createState() => _MyDropdownMenuWidgetState();
}

class _MyDropdownMenuWidgetState extends State<MyDropdownMenuWidget> {

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
        width: 210.0,
        initialSelection: nights[0],
        // first car to be displayed
        onSelected: (night) {
          setState(() {
            widget.updateNight(
                night as int); // use widget to access widget fields from state class
          });
        },
        // the list map function converts the list of cars to a list of DropdownMenuEntries
        dropdownMenuEntries: nights.map<DropdownMenuEntry<int>>((int night) {
          return DropdownMenuEntry(value: night, label: night.toString());
        }).toList());
  }
}

class Hotel extends StatefulWidget {
  const Hotel({required this.updateHotel ,super.key});
  final Function(int) updateHotel;
  @override
  State<Hotel> createState() => _HotelState();
}

class _HotelState extends State<Hotel> {
  int _stars=5;
  int get stars => _stars;

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 50,),
          const Text('Choose Hotel:', style: TextStyle(fontSize: 18),),
          const SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children : [
              Column(
                children:[
                  Radio(value: 5, groupValue: _stars,
                      onChanged: (val){
                        _stars= val as int;
                        widget.updateHotel(_stars);
                      }
                  ),
                  const Text('Elessa Hotel', style: TextStyle(fontSize: 18),),
                  Image.network("https://cf.bstatic.com/xdata/images/hotel/max1280x900/472147242.jpg?k=7403e9bfc53b525b5116a44f0f2fb3e2a70937b38fb62756b1f944f112115d08&o=&hp=1", height: 300, width: 400),
                ],
              ),
            ],
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Column(
                children:[
                  Radio(value: 4, groupValue: _stars,
                      onChanged: (val){
                        setState(() {
                          _stars=val as int;
                          widget.updateHotel;
                        });
                      }
                  ),

                  const Text('The Stanley', style: TextStyle(fontSize: 18),),
                  Image.network("https://cf.bstatic.com/xdata/images/hotel/max1024x768/300750797.jpg?k=8812df6a80e5ab9c20726333c0c2acd33421a39d7f2edbcdd6282e72d726afe1&o=&hp=1", height: 300, width: 400),
                ],),],),
          Row( mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Column(
                children:[
                  Radio(value: 3, groupValue: _stars,
                      onChanged: (val){
                        setState(() {
                          _stars=val as int;
                          widget.updateHotel;
                        });
                      }
                  ),
                  const Text('balasca hotel', style: TextStyle(fontSize: 18),),
                  Image.network("https://cf.bstatic.com/xdata/images/hotel/max1024x768/36692766.jpg?k=80358d3e0ade137ce860b7d076fc8fdbef042c4a4c7bdd6eea4f2810272d78d1&o=&hp=1", height: 300, width:400),
                ],
              ),
            ],),
          IconButton(
              onPressed: (){
                if(stars==3){
                  countries[3].updatePrice(250);
                }
                else if(stars==4){
                  countries[3].updatePrice(350);
                }
                else if(stars==5){
                  countries[3].updatePrice(450);
                }
                countries[0].updatePrice(50);//for nights, it doesnt matter how many nights theyre staying
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Price(index: 3)
                  ),

                );
              },
              icon: const Icon(Icons.calculate, size: 50))
          ],
        );
    }
}