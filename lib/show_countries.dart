import 'package:flutter/material.dart';
import 'country.dart';
import 'bali.dart';
import 'greece.dart';
import 'italy.dart';
import 'turkey.dart';
import 'turkeyhome.dart';
import 'italyhome.dart';
import 'balihome.dart';
import 'greecehome.dart';
class ShowCountries extends StatefulWidget {
  const ShowCountries({required this.width, Key? key}) : super(key: key);
  final double width;

  @override
  State<ShowCountries> createState() => _ShowCountriesState();
}

class _ShowCountriesState extends State<ShowCountries> {
  int selectedCountryIndex = -1;
  int _index=0;
  int get index => _index;
  final Map<int, Widget> countryPages = {
    0: const Turkey(),
    1: const Italy(),
    2: const Bali(),
    3: const Greece(),
  };

  @override
  Widget build(BuildContext context) {
    return
      Column(
        children: [
    Expanded(
    child: ListView.builder(
    padding: const EdgeInsets.all(10),
    itemCount: countries.length,
    itemBuilder: (context, index) {
    return Column(
    children: [
    const SizedBox(height: 10),
    Row(
    children: [
    Radio(
    value: index,
    groupValue: selectedCountryIndex,
    onChanged: (value) {
    setState(() {
    selectedCountryIndex = value as int;
    _index=selectedCountryIndex;
    });
    },
    ),
    SizedBox(
    width: widget.width * 0.28,
    child: Text(
    countries[index].toString2(),
    style: const TextStyle(fontSize: 18),
    ),
    ),
    ],
    ),
    const SizedBox(height: 10),
    Image.network(
    countries[index].image1,
    height: widget.width * 0.3,
    width: 600,
    ),
    const SizedBox(height: 10),

    ],
    );
    },
    ),
    ),
    FloatingActionButton(
    onPressed: () {
    if (selectedCountryIndex ==0) {
    Navigator.push(
    context,
    MaterialPageRoute(
    builder: (context) => const Turkeyhome()
    //countryPages[selectedCountryIndex]!,
    ),
    );
    }
    else if (selectedCountryIndex ==1) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const Italyhome()
          //countryPages[selectedCountryIndex]!,
        ),
      );
    }
    else if (selectedCountryIndex ==2) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const Balihome()
          //countryPages[selectedCountryIndex]!,
        ),
      );
    }
    else if (selectedCountryIndex ==3) {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => const Greecehome()
          //countryPages[selectedCountryIndex]!,
        ),
      );
    }
    },
      child:const Icon(Icons.airplane_ticket, size:50),
      backgroundColor: Colors.black,

    ),

    ],

    );

    }
}