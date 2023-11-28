import 'package:flutter/material.dart';
import 'country.dart';
import 'price.dart';
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
        initialSelection: nights[0], // first car to be displayed
        onSelected: (night) {
          setState(() {
            widget.updateNight(night as int); // use widget to access widget fields from state class
          });
        }, // the list map function converts the list of cars to a list of DropdownMenuEntries
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
                  const Text(' Potato Head Suites & Studios', style: TextStyle(fontSize: 18),),
                  Image.network("https://cf.bstatic.com/xdata/images/hotel/max1280x900/244284475.jpg?k=c21fc02fb8b76cfced967a84801a54f42e8bb2eef5e83a56bbc21128ae98558d&o=&hp=1", height: 300, width: 400),
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

                  const Text('Ulun Ubud Resort', style: TextStyle(fontSize: 18),),
                  Image.network("https://cf.bstatic.com/xdata/images/hotel/max1280x900/174338313.jpg?k=dba53acf31dac2c3e74f770d8c94c7f5898eb8779391e8243903f53e7133cde9&o=&hp=1", height: 300, width: 400),
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
                  const Text('Yello Kuta Beachwalk ', style: TextStyle(fontSize: 18),),
                  Image.network("https://cf.bstatic.com/xdata/images/hotel/max1024x768/290178880.jpg?k=c44e233e86639451c0328a4db7dfc8db7b059f62b9de7d8cb95f25017f52611e&o=&hp=1", height: 300, width:400),
                ],
              ),
            ],),
          IconButton(
              onPressed: (){
                countries[2].resetPrice(400);
                if(stars==3){
                  countries[2].updatePrice(300);
                }
                else if(stars==4){
                  countries[2].updatePrice(400);
                }
                else if(stars==5){
                  countries[2].updatePrice(520);
                }
                countries[0].updatePrice(50);//for nights, it doesnt matter how many nights theyre staying
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Price(index: 2)
                  ),

                );
              },
              icon: const Icon(Icons.calculate, size: 50))
          ],
        );
    }
}