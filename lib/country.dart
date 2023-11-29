import 'package:flutter/material.dart';
import 'hotel.dart';
class Country{
  final String _name;
  final double _price;
  final String _img1;
  final String _detail;
  //final Hotel _hotel5;
  //final Hotel _hotel4;
  //final Hotel _hotel3;

  Country(this._name, this._price, this._img1, this._detail
      /*this._hotel5, this._hotel4, this._hotel3*/);
  double _price2=0;

  //double get price2 => _price2;
  String get name => _name;
  double get getPrice => _price;
  String get image1 =>_img1;
  String get detail => _detail;
  /*Hotel get hotel5 => _hotel5;
  Hotel get hotel4 => _hotel4;
  Hotel get hotel3 => _hotel3;*/
  void setPrice(){
    _price2=_price;
  }
  void updatePrice(double p){
    _price2+=p;
  }
  /*double updatePrice(int s){
    if(s==3){
      return price*1.2+50;
    }
    else if(s==4){
      return price*1.35+50;
    }
    else{
      return price*1.5+50;
    }
    //the 50 is because
  }*/

  @override
  String toString(){

    return 'Ticket for $name costs: \$$_price2 ';
  }
  String toString2(){
    return 'Ticket for $name costs: \$$_price ';

  }
}

List<Country> countries=[
  Country('Turkey',400,
      "https://expatra.com/wp-content/uploads/2021/06/Old-town-Antalya-Turkey.jpg", "Turkey, a captivating country where East meets West,"
          " offers a mesmerizing blend of ancient history, vibrant culture,"
          " and breathtaking landscapes, beckoning travelers with its iconic landmarks"
          " like the Hagia Sophia and Cappadocia\'s surreal landscapes. "
          "From the bustling bazaars of Istanbul to the stunning beaches"
          " of Antalya, Turkey promises an unforgettable journey "
          "filled with rich experiences and warm hospitality."),
  Country('Italy', 800,
      "https://hips.hearstapps.com/hmg-prod/images/hbz-italy-cinque-terre-santa-margherita-00-index-1541710953.jpg",
      'Italy, a country steeped in history and art, beckons with its iconic landmarks, delectable cuisine,'
          ' and picturesque landscapes. From the ancient ruins of Rome to the romantic canals of Venice, '
          'Italy offers a truly unforgettable and immersive travel experience.'),
  Country('Bali',1200,
      "https://oceanjar-new.s3.ap-south-1.amazonaws.com/Bali_6eebf60dd3.jpg",
      'Bali, known as the "Island of the Gods," offers an enchanting escape with its pristine beaches, lush landscapes, '
          'and vibrant cultural heritage. From exploring ancient temples and traditional markets to indulging in world-class surfing '
          'and rejuvenating spa retreats,Bali beckons travelers with its idyllic beauty and warm hospitality, '
          'promising an unforgettable tropical getaway.'),
  Country('Greece',950,
      "https://media.cnn.com/api/v1/images/stellar/prod/230426104055-03-santorini-extra-jb.jpg?c=16x9&q=h_720,w_1280,c_fill",
    'Greece, the birthplace of civilization, invites you to immerse yourself in its mythical past and breathtaking '
        'natural wonders. From the iconic Acropolis of Athens to the idyllic islands of Santorini and Mykonos, '
        'Greece enchants with its rich history, sun-kissed beaches, and warm Mediterranean hospitality, '
        'offering a truly unforgettable journey through ancient ruins, crystal-clear waters, and vibrant coastal towns.',
  ),
];