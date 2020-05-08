import 'package:flowers_shop/Model/style.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final title, img;
  DetailsPage(this.title, this.img);

  @override
  _DetailsPageState createState() => _DetailsPageState(this.title, this.img);
}

class _DetailsPageState extends State<DetailsPage> {
  String title, img;
  _DetailsPageState(this.title, this.img);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              icon: Icon(Icons.arrow_back_ios, color: Colors.black),
              onPressed: () {
                Navigator.pop(context);
              }),
        ), 
        body: ListView( 
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2 - 100,
              width: MediaQuery.of(context).size.width,
              child: Image(
                fit: BoxFit.contain,
                image: NetworkImage(img),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
                //height: MediaQuery.of(context).size.height / 2,
                width: MediaQuery.of(context).size.width,
                color: Color(0xFFF1F1F1),
                child: Column(
                  children: <Widget>[
                    ListTile(
                      title: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 4.0),
                        child: Text(
                          title,
                          style: ThemeText.titleText,
                        ),
                      ),
                      subtitle: Text("Succulent Green Plant",
                      style: TextStyle(
                        fontWeight: FontWeight.w600
                      ),
                      ),
                      trailing: CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 42.0,
                          child: Text(
                            "\$ 15",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.0,
                                fontWeight: FontWeight.w700),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 16.0),
                      child: Wrap(
                        children: <Widget>[
                          Text(
                            "Plant Definition. Plants are multicellular organisms in the kingdom Plantae that use photosynthesis to make their own food. ... They produce most of the world's oxygen, and are important in the food chain, as many organisms eat plants or eat organisms which eat plants. The study of plants is called botany",
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star, color: Colors.yellow),
                          Icon(Icons.star_half, color: Colors.yellow),
                          Icon(Icons.star_border, color: Colors.yellow),
                          SizedBox(
                            width: 16.0,
                          ),
                          Text("(17)"),
                          SizedBox(
                            width: 16.0,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width / 2.6,
                            height: 50,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: 6.0,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                                  ),
                                ),
                                Positioned(
                                  left: 30.0,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://images.unsplash.com/photo-1503443207922-dff7d543fd0e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80"),
                                  ),
                                ),
                                Positioned(
                                  left: 54.0,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://manofmany.com/wp-content/uploads/2019/06/50-Long-Haircuts-Hairstyle-Tips-for-Men-5.jpg"),
                                  ),
                                ),
                                Positioned(
                                  left: 75.0,
                                  child: CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        "https://www.findhealthtips.com/wp-content/uploads/2018/09/ranveer-singhs-bed-head-hairstyles-1-png.png"),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 6.0),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.08,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Icon(Icons.shopping_basket,
                                color: Colors.black, size: 27.0),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Text(
                                "ADD TO BAG",
                                style: TextStyle(
                                    fontSize: 27.0,
                                    fontWeight: FontWeight.w800,
                                    letterSpacing: 0.75),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
