import 'package:flutter/material.dart';

class FestivalPage extends StatefulWidget {
  @override
  _FestivalPageState createState() => _FestivalPageState();
}

class _FestivalPageState extends State<FestivalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                  child: Image(
                image: NetworkImage(
                    "https://www.clubbinghouse.com/images/divers/IMG_20180727_075356_0727075450.jpg"),
              ))
            ],
          )
        ],
      ),
    );
  }
}
