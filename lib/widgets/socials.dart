import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

Widget Socials() {
  return Row(
    children: [
      SizedBox(width: 20.0),
      IconButton(
        color: Colors.black,
        icon: Icon(FontAwesomeIcons.solidUser),
        iconSize: 28,
        onPressed: () {
          _launchURL("https://lizmackle.github.io/React_Portfolio/");
        },
      ),
      SizedBox(width: 20),
      IconButton(
        color: Colors.black,
        icon: Icon(FontAwesomeIcons.github),
        iconSize: 30,
        onPressed: () {
          _launchURL("https://github.com/LizMackle");
        },
      ),
      SizedBox(width: 20),
      IconButton(
        color: Color(0xFF1671BB),
        icon: Icon(FontAwesomeIcons.linkedin),
        iconSize: 30,
        onPressed: () {
          _launchURL("https://www.linkedin.com/in/liz-mackle/");
        },
      ),
      SizedBox(width: 10.0),
    ],
  );
}

_launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
