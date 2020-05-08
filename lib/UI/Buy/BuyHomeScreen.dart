import 'package:flowers_shop/Model/style.dart';
import 'package:flowers_shop/UI/Buy/Tabs/Accessories.dart';
import 'package:flowers_shop/UI/Buy/Tabs/New.dart';
import 'package:flowers_shop/UI/Buy/Tabs/Plants.dart';
import 'package:flowers_shop/UI/Buy/Tabs/Popular.dart';
import 'package:flutter/material.dart';

class BuyHomeScreen extends StatefulWidget {
  @override
  _BuyHomeScreenState createState() => _BuyHomeScreenState();
}

class _BuyHomeScreenState extends State<BuyHomeScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var totalHeight = MediaQuery.of(context).size.height;
    var totalWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F3F3),
        body: ListView(
          children: <Widget>[
            SizedBox(
              height: totalHeight * 0.04,   
            ),
            Center(
              child: Text("Welcome in", style: ThemeText.smallTextwithGrey),
            ),
            Center(
              child: Text("Flowers Shop", style: ThemeText.titleText),
            ),
            SizedBox(
              height: totalHeight * 0.03,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                height: totalHeight * 0.06,
                width: totalWidth,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "",
                      suffixIcon: Icon(
                        Icons.search,
                        color: Colors.black,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(
              height: totalHeight * 0.03,
            ),
            TabBar(
              indicatorColor: Colors.transparent,
              isScrollable: true,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              controller: tabController,
              labelStyle:
                  TextStyle(fontSize: 17.0, fontWeight: FontWeight.w800),
              unselectedLabelStyle:
                  TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600),
              tabs: <Widget>[
                Tab(
                  child: Text("Popular"),
                ),
                Tab(
                  child: Text("New"),
                ),
                Tab(
                  child: Text("Plants"),
                ),
                Tab(
                  child: Text("Accessories"),
                ),
              ],
            ),
            Container(
              height: totalHeight,
              child: TabBarView(
                controller: tabController,
                children: <Widget>[
                  Popular(),
                  Popular(),
                  Popular(),
                  Popular(),
                  // New(),
                  // Plants(),
                  // Accessories(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
