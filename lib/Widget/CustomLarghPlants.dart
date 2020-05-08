import 'package:flowers_shop/UI/Buy/DetailsPage.dart';
import 'package:flutter/material.dart';

class CustomLarghPlants extends StatefulWidget {
  final secondTitle, secondImg;
  CustomLarghPlants(this.secondTitle, this.secondImg);
  @override
  _CustomLarghPlantsState createState() =>
      _CustomLarghPlantsState(this.secondTitle, this.secondImg);
}

class _CustomLarghPlantsState extends State<CustomLarghPlants> {
  final secondTitle, secondImg;
  _CustomLarghPlantsState(this.secondTitle, this.secondImg);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0,
        right: 8.0,
        bottom: 16,
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => DetailsPage(secondTitle,secondImg)));
        },
        child: Container(
          alignment: Alignment.topCenter,
          height: MediaQuery.of(context).size.height * 0.30,
          width: MediaQuery.of(context).size.width / 2 - 25,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0), color: Colors.white),
          child: Stack(
            children: <Widget>[
              Positioned(
                bottom: 10.0,
                left: 12.0,
                right: 8.0,
                child: Text(
                  secondTitle,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff686868),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                  top: 8.0,
                  left: 16,
                  child: Image(
                    height: MediaQuery.of(context).size.height * 0.22,
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(secondImg),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
