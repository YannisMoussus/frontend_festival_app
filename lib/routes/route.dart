import 'package:app_festival/pages/create_artist.dart';
import 'package:app_festival/pages/create_festival.dart';
import 'package:app_festival/pages/desc_artist.dart';
import 'package:app_festival/pages/desc_festival.dart';
import 'package:app_festival/pages/home_page.dart';
import 'package:app_festival/pages/login_page.dart';
import 'package:app_festival/pages/map_page.dart';
import 'package:app_festival/pages/profil_page.dart';
import 'package:app_festival/pages/register_page.dart';
import 'package:app_festival/pages/search_page.dart';
import 'package:app_festival/pages/ticket_page.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class RoutePage extends StatefulWidget {
  @override
  _RoutePageState createState() => _RoutePageState();
}

class _RoutePageState extends State<RoutePage> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();
  int index = 2;
  final screens = [
    TicketPage(),
    MapPage(),
    FestivalPage(),
    CreateArtistPage(),
    LoginPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final items = <Widget>[
      Icon(Icons.payments, size: 30),
      Icon(Icons.map_outlined, size: 30),
      Icon(Icons.home, size: 30),
      Icon(Icons.search, size: 30),
      Icon(Icons.person, size: 30),
    ];
    return Scaffold(
      extendBody: true,
      body: screens[index],
      bottomNavigationBar: CurvedNavigationBar(
        color: Color(0xFFE57CF2),
        backgroundColor: Colors.transparent,
        height: 60,
        index: index,
        items: items,
        onTap: (index) => setState(() => this.index = index),
      ),
    );
  }
}
