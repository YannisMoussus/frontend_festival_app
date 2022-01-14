import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:app_festival/models/artist_model.dart';
import 'package:app_festival/models/dummy_data.dart';
import 'package:app_festival/models/event_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                        margin: EdgeInsets.only(right: 300),
                        height: 150.0,
                        width: 350.0,
                        child: Image(
                          image: NetworkImage(
                            "https://firebasestorage.googleapis.com/v0/b/festival-ca840.appspot.com/o/Logo_App_Festival.png?alt=media&token=5077c4a6-3eda-4c62-8c5e-b823c569c609",
                          ),
                        )),
                    Container(
                      margin: EdgeInsets.only(right: 15),
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage: AssetImage(
                            "/home/yannis-moussus/APP_FESTIVAL/app_festival/assets/me.jpg"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                CustomTitle("Festival Upcoming, don't miss it!"),
                SizedBox(
                  height: 230,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: upcomingEvents.length,
                    itemBuilder: (context, index) {
                      EventModel event = upcomingEvents[index];
                      return Container(
                        width: 300,
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(event.image),
                            ),
                            Text(event.location,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                )),
                            Text(event.name, style: TextStyle(fontSize: 25)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15),
                  child: Divider(
                    color: Colors.grey,
                    thickness: 2,
                  ),
                ),
                CustomTitle("Buy your ticket! Right now!"),
                SizedBox(
                  height: 200,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: specialEvents.length,
                    itemBuilder: (context, index) {
                      EventModel event = specialEvents[index];
                      return Container(
                        width: 240,
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  Image.asset(event.image),
                                  Positioned(
                                    right: 5,
                                    top: 5,
                                    child: Container(
                                      padding: EdgeInsets.all(7),
                                      decoration: BoxDecoration(
                                        color: Colors.purple,
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      child: Text(event.price),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Text(event.location,
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.grey,
                                )),
                            Text(event.name, style: TextStyle(fontSize: 25)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                CustomTitle("Artists on tour"),
                Container(
                  height: 240,
                  child: ListView.builder(
                    itemCount: artistsOnTour.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      ArtistModel artist = artistsOnTour[index];

                      return Container(
                        margin: EdgeInsets.only(left: 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Stack(
                                children: [
                                  Image.asset(
                                    artist.image,
                                    width: 280,
                                    height: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  Container(
                                    width: 280,
                                    height: 200,
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                          begin: Alignment.topLeft,
                                          end: Alignment.bottomRight,
                                          colors: [
                                            Colors.pink.withAlpha(110),
                                            Colors.deepPurple.withAlpha(190),
                                          ]),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              artist.name,
                              style: TextStyle(fontSize: 28),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTitle extends StatelessWidget {
  final String title;
  CustomTitle(this.title);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10),
        Container(
          margin: EdgeInsets.only(left: 15.0),
          child: Text(
            title,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 15),
      ],
    );
  }
}
