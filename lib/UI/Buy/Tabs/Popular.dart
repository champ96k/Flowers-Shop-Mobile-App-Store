import 'package:flowers_shop/Widget/CustomLarghPlants.dart';
import 'package:flowers_shop/Widget/CustomSmalPlants.dart';
import 'package:flutter/material.dart';

class Popular extends StatefulWidget {
  @override
  _PopularState createState() => _PopularState();
}

class _PopularState extends State<Popular> {
  Widget customBox(String firstTitle, String secondTitle, String firstImg,
      String secondImg) {
    return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CustomSmalPlants(firstTitle, firstImg),
          CustomLarghPlants(secondTitle, secondImg),
        ]
      );
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView( 
        children: <Widget>[
          customBox(
              "Artificial potted Plants",
              "Ageratum houstonianum.",
              "https://www.kindpng.com/picc/b/69/691004.png",
              "https://www.kindpng.com/picc/b/126/1264488.png"),
          customBox(
              "Alyssum - Sweet Alyssum.",
              "Alstroemeria - Peruvian LIly.",
              "https://www.kindpng.com/picc/b/69/691139.png",
              "https://www.kindpng.com/picc/b/664/6644412.png"
            ),
          customBox(
              "Antirrhinum majus",
              "Asclepias syriaca",
              "https://www.kindpng.com/picc/b/69/691734.png",
              "https://www.kindpng.com/picc/b/69/691281.png"
              ),
          customBox(
              "African Daisy. Gazania",
              "Aconitum Ranunculus Family",
              "https://www.kindpng.com/picc/b/149/1499548.png",
              "https://www.kindpng.com/picc/b/622/6220384.png"),

              SizedBox(
                height: 30.0, 
              ),
        ],
      ),
    ); 
  }
}
