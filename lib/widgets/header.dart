import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget Header() {
  return Row(
    children: <Widget>[
      SizedBox(width: 20.0),
      Container(
        width: 170.0,
        height: 170.0,
        child: CircleAvatar(
          radius: 40,
          backgroundColor: Colors.black,
          child: CircleAvatar(
            radius: 82.0,
            backgroundImage: AssetImage('assets/LMCVimg.jpg'),
          ),
        ),
      ),
      SizedBox(width: 20.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Elizabeth Mackle",
            style: TextStyle(fontSize: 23.0, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10.0),
          Text(
            "Full Stack Developer",
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Row(
            children: <Widget>[
              Icon(
                FontAwesomeIcons.locationPin,
                size: 13.0,
                color: Colors.black54,
              ),
              SizedBox(width: 4.0),
              Text(
                "Perth, WA",
                style: TextStyle(color: Colors.black54),
              ),
            ],
          ),
        ],
      )
    ],
  );
}
