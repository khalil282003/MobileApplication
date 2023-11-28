import 'package:flutter/material.dart';
import 'turkeyhome.dart';
class Country{
  final String _name;
  double price;
  final String _img1;


  Country(this._name, this.price,this._img1);

  String get name => _name;
  double get getPrice => price;
  String get image1 =>_img1;
  void resetPrice(double p){
    price=p;
  }
  void updatePrice(double p){
    price+=p;
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

    return 'Ticket for $name costs: \$$price ';
  }
}

List<Country> countries=[
  Country('Turkey',400,
      "https://expatra.com/wp-content/uploads/2021/06/Old-town-Antalya-Turkey.jpg"),
  Country('Italy', 800,
      "https://hips.hearstapps.com/hmg-prod/images/hbz-italy-cinque-terre-santa-margherita-00-index-1541710953.jpg"),
  Country('Bali',1200,
      "https://oceanjar-new.s3.ap-south-1.amazonaws.com/Bali_6eebf60dd3.jpg"),
  Country('Greece',950,
      "https://media.cnn.com/api/v1/images/stellar/prod/230426104055-03-santorini-extra-jb.jpg?c=16x9&q=h_720,w_1280,c_fill"),
];