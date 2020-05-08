import 'package:flowers_shop/UI/Buy/DetailsPage.dart';
import 'package:flutter/material.dart';

class CustomSmalPlants extends StatefulWidget {
  final firstTitle, firstImg;
  CustomSmalPlants(this.firstTitle, this.firstImg);

  @override
  _CustomSmalPlantsState createState() =>
      _CustomSmalPlantsState(this.firstTitle, this.firstImg);
}

class _CustomSmalPlantsState extends State<CustomSmalPlants> {
  String firstTitle, firstImg;
  _CustomSmalPlantsState(this.firstTitle, this.firstImg);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push( 
              context, MaterialPageRoute(builder: (context) => DetailsPage(firstTitle,firstImg)));
        },
        child: Container(
          height: MediaQuery.of(context).size.height * 0.27,
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
                  firstTitle,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Color(0xff686868),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                  top: 8.0,
                  left: 20,
                  child: Image(
                    height: MediaQuery.of(context).size.height * 0.18,
                    fit: BoxFit.fitHeight,
                    image: NetworkImage(firstImg),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
