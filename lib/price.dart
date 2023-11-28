import 'package:flutter/material.dart';
import 'turkeyhome.dart';
import 'turkey.dart';
import 'country.dart';
import 'show_countries.dart';
import 'italy.dart';
import 'italyhome.dart';
import 'balihome.dart';
import 'bali.dart';
import 'greece.dart';
import 'greecehome.dart';
class Price extends StatefulWidget {
  const Price({required this.index, super.key});
  final int index;
  //final String name=countries[index].name;

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  late int _i;
  String x="";
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _i=widget.index;
    if(_i==0){
       x=countries[0].toString();
    }
    else if(_i==1){
       x=countries[1].toString();
    }
    else if(_i==2){
       x=countries[2].toString();
    }
    else if(_i==3){
       x=countries[3].toString();
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize: Size.fromHeight(70),
          child: AppBar(
            title: const Text('Your Flight Price'),
            backgroundColor: Colors.black,
          ),
      ),
      body: Column(
        children: [
          Text("$x"),
        ],
      ),
    );
  }
}
