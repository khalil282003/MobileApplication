import 'package:flutter/material.dart';
import 'country.dart';
import 'price.dart';
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
                        //countries[1].updatePrice(400);
                      }
                  ),
                  const Text(' Ca di Dio', style: TextStyle(fontSize: 18),),
                  Image.network("https://cf.bstatic.com/xdata/images/hotel/max1280x900/115391133.jpg?k=7bdb0e753bd344345bb74aa0e0f92f4d5b47bd0a232472c3ec224894c433083d&o=&hp=1", height: 300, width: 400),
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
                          //countries[1].updatePrice(300);
                        });
                      }
                  ),

                  const Text('H10   Palazzo Galla', style: TextStyle(fontSize: 18),),
                  Image.network("https://www.jet2holidays.com/HotelImages/Web/FCO_83888_H10_Palazzo_Galla_1122_16.jpg", height: 300, width: 400),
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
                          //countries[1].updatePrice(200);
                        });
                      }
                  ),
                  const Text('Hotel Smeraldo', style: TextStyle(fontSize: 18),),
                  Image.network("https://dynamic-media-cdn.tripadvisor.com/media/photo-o/03/55/9d/6d/getlstd-property-photo.jpg?w=700&h=-1&s=1", height: 300, width:400),
                ],
              ),
            ],),
          IconButton(
              onPressed: (){
                if(stars==3){
                  countries[1].updatePrice(200);
                }
                else if(stars==4){
                  countries[1].updatePrice(270);
                }
                else if(stars==5){
                  countries[1].updatePrice(350);
                }
                countries[0].updatePrice(50);//for nights, it doesnt matter how many nights theyre staying
                Navigator.push(
                    context,
                    MaterialPageRoute(
                    builder: (context) => const Price(index: 1)
                    ),

                );
              },
              icon: const Icon(Icons.calculate, size: 50))
          ],
        );
    }
}