import 'package:flowers_shop/UI/Buy/BuyHomeScreen.dart';
import 'package:flowers_shop/UI/HomePage.dart';
import 'package:flowers_shop/UI/Sell/SellHomeScreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MaterialApp(
    title: 'Flowers Shop',
    debugShowCheckedModeBanner: false, 
     initialRoute: '/',
          routes: {
            '/': (context) => HomePage(),  
            '/sellpage': (context) => SellHomeScreen(),
            '/buypage': (context) => BuyHomeScreen(),            
          },
  )
 );
} 