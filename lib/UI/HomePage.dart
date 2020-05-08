import 'package:flowers_shop/Model/style.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0xffF3F3F3),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            
            Center(
              child: Text("if you want to sell or Buy ?",
              style: ThemeText.smallTextwithGrey
              ),
            ),
            Center(
              child: MaterialButton(
                color: Colors.orange,
                onPressed: () {
                    Navigator.pushNamed(context, '/sellpage');
                },
                child: Text("Sell",
                style: ThemeText.titleText, 
                ), 
              )
            ),

             Center(
              child: MaterialButton(
                color: Colors.orange,
                autofocus: true,
                onPressed: () {
                   Navigator.pushNamed(context, '/buypage');
                },
                child: Text("Buy",
                style: ThemeText.titleText,  
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
