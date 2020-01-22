import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:travel2/model.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TravelDashboard(),
    );
  }
}

class TravelDashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 450,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 250,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('images/asia.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 200,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      padding: EdgeInsets.only(
                        left: 20,
                        right: 25,
                        top: 20,
                      ),
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(45)),
                        color: Colors.white,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  CircleAvatar(
                                    radius: 25,
                                    backgroundColor: Colors.white,
                                    backgroundImage:
                                        AssetImage('images/jessicaveranda.jpg'),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "Jessica Veranda",
                                    style: GoogleFonts.lato(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "22.3 K",
                                style: GoogleFonts.openSans(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 23),
                          Text(
                            "Desciption :",
                            style: GoogleFonts.arvo(
                              fontSize: 17,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Text(
                            "This is a layout Travel APP UI from Byneet Dev",
                            textAlign: TextAlign.justify,
                            style: GoogleFonts.openSans(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(height: 20),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 170,
                    right: 20,
                    child: CircleAvatar(
                      radius: 30,
                      foregroundColor: Colors.black12,
                      child: IconButton(
                        icon: Icon(
                          Icons.favorite_border,
                          size: 30,
                          color: Colors.red,
                        ),
                        onPressed: () {},
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Recommended for you",
                  style: GoogleFonts.arvo(
                    fontSize: 17,
                    fontWeight: FontWeight.w600,
                  )),
            ),
            SizedBox(height: 17),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 10),
              height: 220,
              child: RecommendedPlaces(),
            )
          ],
        ),
      ),
    ));
  }
}

class RecommendedPlaces extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: travelData.length,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        final data = travelData[index];
        return Column(
          children: <Widget>[
            Container(
              width: 230,
              height: 160,
              margin: EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  image: DecorationImage(
                    image: AssetImage(data.urlimage),
                    fit: BoxFit.cover,
                  )),
            ),
            SizedBox(height: 7),
            Container(
              width: 230,
              height: 50,
              color: Colors.white,
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    data.name,
                    style: GoogleFonts.arvo(
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        textStyle: TextStyle(
                          color: Colors.blue,
                        )),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        size: 18,
                        color: Colors.black54,
                      ),
                      SizedBox(width: 8),
                      Text(
                        data.country,
                        style: GoogleFonts.roboto(
                          fontSize: 13,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      },
    );
  }
}
